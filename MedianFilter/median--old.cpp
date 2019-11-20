#include "median.h"

T_output compute_pixel(T_input A[N_kernel][M_kernel],
					   const T_input B[N_kernel][M_kernel]) {
	T_output result = 0;
	for (int i = 0; i < N_kernel; i++)
		for (int j = 0; j < M_kernel; j++)
			result += A[i][j] * B[i][j];
	return result;
}

// Read single values from matrix and put all into stream
// Input:
//    - in_array[N_in*M_in]: matrix holding values to stream
// Output:
//    - in_stream: stream where values from matrix are streamed to
void read_pixel(hls::stream<T_input> &in_stream,
				T_input in_array[N_in*M_in]) {
	read_loop:for (int i = 0; i < N_in*M_in; i++){
		T_input temp = in_array[i];
		in_stream.write(temp);
	}
}

// Move values in auxiliary arrays
//   - In crop matrix move values left shifting in pos_y column from temp_array and new_data at the bottom right
//   - In temp_array move values up shifting in new_data in the pos_y column
// Inputs:
//    - new_data: single value read from the stream (next element in matrix)
//    - pos_y: column index of the matrix of image where new_data is read from
// In-outputs:
//    - temp_array[N_kernel-1][M_in]: matrix storing values of previous rows needed as neighborhood
//    - crop[N_kernel][M_kernel]: matrix to store neighborhood values
void move_data(T_input new_data,
			   T_input temp_array[N_kernel-1][M_in],
			   T_input crop[N_kernel][M_kernel],
			   int pos_y) {

	// Move values left in crop
	for (int i = 0; i < N_kernel; i++)
		for (int j = 0; j < M_kernel - 1; j++)
			crop[i][j] = crop[i][j+1];
	// Fill rightmost column in crop from temp_array
	for (int i = 0; i < N_kernel - 1; i++)
		crop[i][M_kernel-1] = temp_array[i][pos_y];
	// Put new_data to bottom right
	crop[N_kernel-1][M_kernel-1] = new_data;

	// Move values up in temp_array in pos_y column
	for (int i = 0; i < N_kernel-2; i++)
		temp_array[i][pos_y] = temp_array[i+1][pos_y];
	// Put new_data to last row of pos_y column in temp_array
	temp_array[N_kernel-2][pos_y] = new_data;
}

// Read single values from stream and fill matrix with them
// Input:
//    - out_stream: stream where values are read from
// Output:
//    - out_array[N_out*M_out]: matrix receiving values from stream
void write_pixel(hls::stream<T_output> &out_stream,
				 T_output out_array[N_out*M_out]) {
	write_loop:for (int i = 0; i < N_out*M_out; i++){
		T_output temp;
		out_stream.read(temp);
		out_array[i] = temp;
	}
}
// Compute convolution of the matrix received from stream with the given kernel, and output it to stream
// Input:
//    - in_stream: stream holding values of input matrix
// Output:
//    - out_stream: stream where calculated pixels are sent to
void convolve(hls::stream<T_input> &in_stream,
			  hls::stream<T_output> &out_stream) {
	// Declaration of auxiliary arrays and definition of (a Laplacian of Gaussian) kernel
	T_input temp_array[N_kernel-1][M_in];
	T_input crop[N_kernel][M_kernel];
	const T_input kernel[N_kernel][M_kernel] = {{0, 1, 0}, {1, -4, 1}, {0, 1, 0}};

	// Computation: read single data from stream, shift crop and temp_array, compute new pixel values, and write it to stream
	conv_rows:for (int i = 0; i < N_in; i++) {
		conv_cols:for (int j = 0; j < M_in; j++) {
			T_input new_input;
			in_stream.read(new_input);
			move_data(new_input,temp_array,crop,j);
			T_output new_output = compute_pixel(crop,kernel);
			if (i > N_kernel-2 && j > M_kernel-2)
				out_stream.write(new_output);
		}
	}
}

// Top-level function
// Input:
//    - in_array[N_in*M_in]: matrix holding input image
// Output:
//    - out_array[N_out*M_out]: matrix where output of edge detection is written to
void conv_stream(T_input in_array[N_in*M_in],
			     T_output out_array[N_out*M_out]) {
	hls::stream<T_input> in_stream;
	hls::stream<T_input> out_stream;
	read_pixel(in_stream,in_array);
	convolve(in_stream,out_stream);
	write_pixel(out_stream,out_array);
}

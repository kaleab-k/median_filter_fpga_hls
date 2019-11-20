#include "median.h"

void write_pixels_to_stream(hls::stream<Input_Type> &in_stream,
				Input_Type in_array[N_in*M_in]) {
	write_pixels_to_stream_loop:for (int i = 0; i < N_in*M_in; i++){
		Input_Type temp = in_array[i];
		in_stream.write(temp);
	}
}

void read_pixels_from_stream(hls::stream<Output_Type> &out_stream,
				 Output_Type out_array[N_out*M_out]) {
	read_pixels_from_stream_loop:for (int i = 0; i < N_out*M_out; i++){
		Output_Type temp;
		out_stream.read(temp);
		out_array[i] = temp;
	}
}

Output_Type bubble_sort(Input_Type CROP[N_kernel][M_kernel]) {
	int size = N_kernel*M_kernel;
	int A[size];

	for (int i = 0, k = 0; i < N_kernel; ++i)
	{
		bubble_sort_mapping:for (int j = 0; j < M_kernel; ++j) {
			A[i * M_kernel + j] = CROP[i][j];
		}
	}

	for(int i = 0; i < size; i++) {
		bubble_sort_inner_loop:for(int j = 0; j < size; j++) {
		  if (A[j] > A[j + 1]){
			int tmp = A[j];
			A[j] = A [j + 1];
			A[j + 1] = tmp;
		  }
		}
	}

	return A[4];
}

void filter(hls::stream<Input_Type> &in_stream,
			  hls::stream<Output_Type> &out_stream) {

	Input_Type temp_array[N_kernel-1][M_in];
	Input_Type crop[N_kernel][M_kernel];

	filter_rows:for (int i = 0; i < N_in; i++) {
		filter_cols:for (int j = 0; j < M_in; j++) {
			Input_Type new_input;
			in_stream.read(new_input);
//			move_data(new_input,temp_array,crop,j);
			// Move values left in crop
				for (int i = 0; i < N_kernel; i++)
					for (int j = 0; j < M_kernel - 1; j++)
						crop[i][j] = crop[i][j+1];
				// Fill rightmost column in crop from temp_array
				for (int i = 0; i < N_kernel - 1; i++)
					crop[i][M_kernel-1] = temp_array[i][j];
				// Put new_data to bottom right
				crop[N_kernel-1][M_kernel-1] = new_input;
				// Move values up in temp_array in pos_y column
				for (int i = 0; i < N_kernel-2; i++)
					temp_array[i][j] = temp_array[i+1][j];
				// Put new_data to last row of pos_y column in temp_array
				temp_array[N_kernel-2][j] = new_input;
			Output_Type new_output = bubble_sort(crop);
			if (i > N_kernel-2 && j > M_kernel-2)
				out_stream.write(new_output);
		}
	}
}

void filter_wrapper(Input_Type in_array[N_in*M_in],
		Output_Type out_array[N_out*M_out]){
	hls::stream<Input_Type> in_stream;
	hls::stream<Input_Type> out_stream;
	write_pixels_to_stream(in_stream, in_array);
	filter(in_stream,out_stream);
	read_pixels_from_stream(out_stream,out_array);
}


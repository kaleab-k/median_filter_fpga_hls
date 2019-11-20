#define N_in 600
#define M_in 600
#define N_kernel 3
#define M_kernel 3
#define N_out 598
#define M_out 598

typedef int Input_Type;
typedef int Output_Type;

#include "hls_stream.h"

Output_Type bubble_sort(Input_Type CROP[N_kernel][M_kernel]);

void write_pixels_to_stream(hls::stream<Input_Type> &in_stream,
				Input_Type in_array[N_in*M_in]);

void read_pixels_from_stream(hls::stream<Output_Type> &out_stream,
		Output_Type out_array[N_out*M_out]);


void filter(hls::stream<Input_Type> &in_stream,
			  hls::stream<Output_Type> &out_stream);

void filter_wrapper(Input_Type in_array[N_in*M_in],
		Output_Type out_array[N_out*M_out]);


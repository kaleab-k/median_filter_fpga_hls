#include "median.h"
#include <stdio.h>
#include <stdlib.h>
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>


#define IMG_INPUT "/home/kalex/Downloads/Ethiopia.jpg"
#define IMG_OUTPUT "/home/kalex/Downloads/EthiopiaMF.jpg"

// Main function that initializes randomly the input image and computes convolution on FPGA
//   and also compares result to the output of testbench function convolve_tb
int main() {

	cv::Mat srcImg = cv::imread(IMG_INPUT);
	cv::cvtColor(srcImg, srcImg, CV_BGR2GRAY);

	T_input in_array[N_in*M_in];
	T_output out_array[N_out*M_out];
	T_output out_array_tb[N_out*M_out];

	hls::stream<T_input> inS;
	hls::stream<T_input> outS;

	cv::Mat imgOut(cv::Size(srcImg.cols-2, srcImg.rows-2), CV_8UC1);


	//Populate input stream
	printf("[");
	for( int i=0; i<srcImg.rows; i++){
		for (int j=0; j<srcImg.cols; j++){
			T_input pixel = srcImg.at<unsigned char>(i, j);
			in_array[i * M_kernel + j] = pixel;
			if(i<5)
				printf("%d \t",in_array[i * M_kernel + j]);
		}
		if (i<5) printf(";\n");
	}
	printf("] \n\n");

	conv_stream(in_array, out_array);

	//Reading outarray
	printf("Output ----------------------\n");
	printf("[");
	for( int i=0; i<srcImg.rows-2; i++){
		for (int j=0; j<srcImg.cols-2; j++){
			imgOut.at<unsigned char>(i, j) = out_array[i * M_kernel + j];
			if (i<5)
				printf("%d ", out_array[i * M_kernel + j]);
		}
		if (i<5) printf(";\n");
	}
	printf("]");


	cv::imwrite(IMG_OUTPUT, imgOut);


	printf("Program has finished without errors.\n");
	return 0;
}

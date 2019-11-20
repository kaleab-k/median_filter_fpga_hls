#include "median.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>

#define IMG_INPUT "/home/kalex/Downloads/Ethiopia.jpg"
#define IMG_OUTPUT "/home/kalex/Downloads/EthiopiaMF.jpg"

// for bubble sort.
void bubble_sort_tb(Input_Type A[])
{
	int size = N_kernel*M_kernel;
	for(int i = 0; i < size; i++) {
		for(int j = 0; j < size; j++) {
		  if (A[j] > A[j + 1]){
			int tmp = A[j];
			A[j] = A [j + 1];
			A[j + 1] = tmp;
		  }
		}
	}
}

// convolution part.
void convolve_tb(int in[N_in*M_in], int out[N_out*M_out]){
	Input_Type window[N_kernel*M_kernel];
	for (int i = 0; i < N_in-N_kernel+1; i++){
		for (int j = 0; j < M_in - M_kernel+1; j++){
			for (int k = 0; k < N_kernel; k++){
				for (int l = 0; l < N_kernel; l++){
					window[k * M_kernel + l] = in[(i+k)*M_in + (j+l)];
//					printf("%d \n", window[k * M_kernel + l]);
				}
			}
			bubble_sort_tb(window);
			out[i*M_out + j] = window[4];
//			printf("%d \n",out[i*M_out + j]);
		}
	}
}

int main() {

	cv::Mat srcImg = cv::imread(IMG_INPUT);
	cv::cvtColor(srcImg, srcImg, CV_BGR2GRAY);

	Input_Type in_array[N_in*M_in];
	Output_Type out_array[N_out*M_out];
	Output_Type out_array_tb[N_out*M_out];

	hls::stream<Input_Type> inStream;
	hls::stream<Input_Type> outStream;

	cv::Mat imgOut(cv::Size(srcImg.cols-2, srcImg.rows-2), CV_8UC1);
	cv::Mat imgOutCV(cv::Size(srcImg.cols-2, srcImg.rows-2), CV_8UC1);
	cv::Mat diff(cv::Size(srcImg.cols-2, srcImg.rows-2), CV_8UC1);

	//Populate input stream
	for( int i=0; i<srcImg.rows; i++){
		for (int j=0; j<srcImg.cols; j++){
			Input_Type pixel = srcImg.at<unsigned char>(i, j);
			in_array[i * N_in + j] = pixel;
		}
	}

	filter_wrapper(in_array, out_array);

	convolve_tb(in_array, out_array_tb);

	for( int i=0; i<srcImg.rows-2; i++){
		for (int j=0; j<srcImg.cols-2; j++){
			imgOut.at<unsigned char>(i, j) = out_array[i * (srcImg.cols-2) + j];
			imgOutCV.at<unsigned char>(i, j) = srcImg.at<unsigned char>(i+1, j+1);
		}
	}

	cv::medianBlur(imgOutCV, imgOutCV, 3);
	cv::absdiff(imgOut, imgOutCV, diff);

	cv::imshow("Original",srcImg);
	cv::imshow("Filtered", imgOut);
	cv::imshow("FilteredCV", imgOutCV);
	cv::imshow("Difference", diff);
	cv::waitKey();

	int err = 0;
	for(int k=0;k<N_out*M_out;k++){
//		printf("Result HW: %d, Result SW: %d\n",out_array[k], out_array_tb[k]);
		if (out_array_tb[k]!=out_array[k]){
			err = 1;
			break;
		}
	}
	if(!err)
			printf("Hooray! It executed without errors!\r\n");

	printf("Program has finished executing.\r\n");
	return 0;
}

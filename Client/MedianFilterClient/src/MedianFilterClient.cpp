//============================================================================
// Name        : MedianFilterClient.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================
#include "median.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <opencv2/opencv.hpp>

#define IMG_INPUT "/home/kinka1/STEVE.jpg"

#define PORT 5001   //The port on which to listen for incoming data
#define SERVER "192.168.1.10"
#define size_of_image N_in*M_in
#define size_of_output_image N_out*M_out
int main()
{
	cv::Mat srcImg = cv::imread(IMG_INPUT);
	cv::cvtColor(srcImg, srcImg, CV_BGR2GRAY);
	cv::Mat imgOut(cv::Size(srcImg.cols-2, srcImg.rows-2), CV_8UC1);

	struct sockaddr_in si_me, si_other;
    int s;

    //int buff_size=2048;
    //int buff_size=64*1024;
    int buff_size=N_in*M_in*sizeof(int);
    int array_size=buff_size/sizeof(int);

    int *buff_int= (int*)malloc(buff_size);
    int *recv_buff_int= (int*) malloc(buff_size);
    char *buff,*recv_buff;

    int i,n;
    int bytes_left;

    int max_transfers=16;
    int curr_tr;

    //int *out_array = (int *) memalign(32, size_of_output_image*sizeof(int));

    //create a TCP socket
    s=socket(AF_INET, SOCK_STREAM, 0);
    // zero out the structure
    memset((char *) &si_me, 0, sizeof(si_me));
    si_me.sin_family = AF_INET;
    si_me.sin_port = htons(PORT);
    si_me.sin_addr.s_addr = htonl(INADDR_ANY);
    memset((char *) &si_other, 0, sizeof(si_other));
    si_other.sin_family = AF_INET;
    si_other.sin_port = htons(PORT);
    inet_aton(SERVER , &si_other.sin_addr);
    //bind socket to port
    connect(s,(struct sockaddr*)&si_other,sizeof(si_other));
    //Setting the pixels
    for( int i=0; i<srcImg.rows; i++){
		for (int j=0; j<srcImg.cols; j++){
			buff_int[i * M_in + j] = srcImg.at<unsigned char>(i, j);
		}
	}
    //start send
    printf("Sending %d bytes\n",buff_size);
//    for (curr_tr = 0; curr_tr < max_transfers; curr_tr++)
//    {
        bytes_left = buff_size;
        buff=(char *)buff_int;
        while (bytes_left > 0)
        {
            n=send(s, buff, bytes_left, 0);
            bytes_left -= n;
            buff+= n;
            printf("Sent bytes: %d, remaining bytes: %d\n",n,bytes_left);
        }
//    }
    //start receive
//    for (curr_tr = 0; curr_tr < max_transfers; curr_tr++)
//    {
        bytes_left = buff_size;
        recv_buff=(char *)recv_buff_int;
        while (bytes_left > 0)
        {

            n=recv(s,recv_buff,bytes_left, 0);
            bytes_left -= n;
            recv_buff += n;
            //printf("Received bytes: %d, remaining bytes: %d\n",n,bytes_left);
        }
//    }
//       for(i=0; i<array_size; i++)
//       {
//           //if (i == 0 || i==array_size-1)
//           {
//               printf("buff[%d] %d, recv_buff[%d] %d\n",i,buff_int[i],i,recv_buff_int[i]);
//           }
//       }
		for( int i=0; i<srcImg.rows-2; i++){
			for (int j=0; j<srcImg.cols-2; j++){
				imgOut.at<unsigned char>(i, j) = recv_buff_int[i * (srcImg.cols-2) + j];
			}
		}

		cv::imshow("Original", srcImg);
		cv::imshow("Filtered", imgOut);
		cv::waitKey();
    return 0;
}


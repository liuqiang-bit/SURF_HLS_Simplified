#include "mSURF.h"
#include "hls_opencv.h"
#include <stdio.h>
#include "mType.h"
#include <fstream>
#include "top.h"

int main(int argc, char** argv)
{

 	AXI_STREAM_24 src_axi;

	cv::Mat src = cv::imread("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified/common/images/1.png");
	cv::Mat src_rgb = src;
	cv::Mat kPImage;
	cvMat2AXIvideo(src_rgb, src_axi);

	KeyPoint keyPoints[2000];
	unsigned int kpn = 0;
	surf_Simplified(src_axi, keyPoints, &kpn, 10000);

	cv::KeyPoint point;
	std::vector<cv::KeyPoint> points[3];

	for(int i = 0; i < kpn; i++)
	{
		ap_uint<32> kp = keyPoints[i];
		point.pt.y = kp.range(31, 17);
		point.pt.x = kp.range(16, 2);
		point.octave = kp.range(1, 0);
		points[point.octave].push_back(point);
	}
	cv::drawKeypoints(src, points[0], kPImage, cv::Scalar(0, 0, 255), 0);
	cv::drawKeypoints(kPImage, points[1], kPImage, cv::Scalar(0, 255, 0), 0);
	cv::drawKeypoints(kPImage, points[2], kPImage, cv::Scalar(255, 0, 0), 0);
	cv::imwrite("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified/common/OutputFile/keyPoint.png", kPImage);
	std::cout << "done";

	return 0;
}

#include "mSURF.h"
#include "hls_opencv.h"
#include <stdio.h>
#include "mType.h"
#include <fstream>
#include "top.h"

int main(int argc, char** argv)
{

	static const int detRow[nTotalLayers] = {591, 585, 579};
	static const int detCol[nTotalLayers] = {791, 785, 779};

	SurfHB* detA0 = (SurfHB*)malloc(detRow[0]*detCol[0] * 4);
	SurfHB* detA1 = (SurfHB*)malloc(detRow[1]*detCol[1] * 4);
	SurfHB* detA2 = (SurfHB*)malloc(detRow[2]*detCol[2] * 4);
	SurfHB* detB0 = (SurfHB*)malloc(detRow[0]*detCol[0] * 4);
	SurfHB* detB1 = (SurfHB*)malloc(detRow[1]*detCol[1] * 4);
	SurfHB* detB2 = (SurfHB*)malloc(detRow[2]*detCol[2] * 4);
	SurfHB* detC0 = (SurfHB*)malloc(detRow[0]*detCol[0] * 4);
	SurfHB* detC1 = (SurfHB*)malloc(detRow[1]*detCol[1] * 4);
	SurfHB* detC2 = (SurfHB*)malloc(detRow[2]*detCol[2] * 4);

	memset(detA0, 0, detRow[0]*detCol[0] * 4);
	memset(detA1, 0, detRow[1]*detCol[1] * 4);
	memset(detA2, 0, detRow[2]*detCol[2] * 4);

	memset(detB0, 0, detRow[0]*detCol[0] * 4);
	memset(detB1, 0, detRow[1]*detCol[1] * 4);
	memset(detB2, 0, detRow[2]*detCol[2] * 4);

	memset(detC0, 0, detRow[0]*detCol[0] * 4);
	memset(detC1, 0, detRow[1]*detCol[1] * 4);
	memset(detC2, 0, detRow[2]*detCol[2] * 4);

//	unsigned int detPtr[9] =
//		   {(uint64)detsA0, (uint64)detsA1, (uint64)detsA2,
//			(uint64)detsB0, (uint64)detsB1, (uint64)detsB2,
//			(uint64)detsC0, (uint64)detsC1, (uint64)detsC2};

//	for(int i = 0; i < 9; i++)
//	{
//		std::cout << std::hex << detPtr[i] << std::endl;
//	}
	AXI_STREAM_24 src_axi;

	for(int k = 0; k < 2; k++)
	{
		cv::Mat src = cv::imread("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/images/1.png");
		cv::Mat src_rgb = src;
		cv::Mat kPImage;
		cvMat2AXIvideo(src_rgb, src_axi);

		KeyPoint keyPoints[2000];
		unsigned int kpn = 0;
		surf_Simplified(
			src_axi, 
			detA0, detA1, detA2, 
			detB0, detB1, detB2, 
			detC0, detC1, detC2, 

			detA0, detA1, detA2,
			detB0, detB1, detB2,
			detC0, detC1, detC2,
			keyPoints, 
			&kpn, 
			10000);

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
		cv::imwrite("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/keyPoint.png", kPImage);
	}
	std::cout << "done";

	return 0;
}

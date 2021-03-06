#ifndef _MSURF_H_
#define _MSURF_H_
#include "hls_video.h"
#include "ap_fixed.h"
#include "hls_stream.h"
#include <ap_axi_sdata.h>
#include "mType.h"

/*----------�����----------*/
//#define DEBUG
/*--------------------------*/
#define MaxKeyPoint 900

#define nTotalLayers 3
#define nMiddleLayers 1

#define MaxRow 1080
#define MaxCol 1920
#define ROW 600
#define COL 800

#define sumRow 601
#define sumCol 801

#define sumBufRow 22

#ifdef DEBUG
#include <fstream>
#endif
namespace my {

	class SURF
	{
	private:

		static const int MaxSize = 1920;

		//	typedef struct{
		//		int x1, x2, y1, y2;
		//		float n;
		//	}SurfHB;

	public:

		SURF();

		void createHessianBox_x_y(const int box[3][5], SurfHB dst[3][5], int oldSize, int newSize, int cols);
		void createHessianBox_xy(const int box[4][5], SurfHB dst[4][5], int oldSize, int newSize, int cols);

		SurfHB calcHaarPattern_x_y(int sumBuf[sumBufRow][sumCol], const SurfHB box[3][5], ap_uint< sumBufRow << 3 > sumBufIndex, int rOffset, int cOffset);
		SurfHB calcHaarPattern_xy(int sumBuf[sumBufRow][sumCol], const SurfHB box[4][5], ap_uint< sumBufRow << 3 > sumBufIndex, int rOffset, int cOffset);

		void integralImg(hls::Mat<600, 800, HLS_8UC3>& img, hls::stream<int>& dst);

		void calcLayerDetAndTrace(
			hls::stream<int>& sum,

			SurfHB* detA0_o, SurfHB* detA1_o, SurfHB* detA2_o,
			SurfHB* detB0_o, SurfHB* detB1_o, SurfHB* detB2_o,
			SurfHB* detC0_o, SurfHB* detC1_o, SurfHB* detC2_o,
			int indexw);

		void findCharacteristicPoint(
			SurfHB* detA0_i, SurfHB* detA1_i, SurfHB* detA2_i,
			SurfHB* detB0_i, SurfHB* detB1_i, SurfHB* detB2_i,
			SurfHB* detC0_i, SurfHB* detC1_i, SurfHB* detC2_i,

			SurfHB hessianThreshold,
			KeyPoint* keyPoints,
			unsigned int* pointNumber,
			int indexr);

		void HessianDetector(
			hls::stream<int>& sum,
			SurfHB* detA0_i, SurfHB* detA1_i, SurfHB* detA2_i,
			SurfHB* detB0_i, SurfHB* detB1_i, SurfHB* detB2_i,
			SurfHB* detC0_i, SurfHB* detC1_i, SurfHB* detC2_i,

			SurfHB* detA0_o, SurfHB* detA1_o, SurfHB* detA2_o,
			SurfHB* detB0_o, SurfHB* detB1_o, SurfHB* detB2_o,
			SurfHB* detC0_o, SurfHB* detC1_o, SurfHB* detC2_o,
			KeyPoint* keyPoints,
			unsigned int* pointNumber,
			int nOctaves,
			int nOctaveLayers,
			SurfHB hessianThreshold);
	};


	/*---------------------------------------class SURF end----------------------------------------*/

}
#endif

#include "mSURF.h"
#include "top.h"

template<typename T>
void consume(hls::stream<T>& S, int row, int col)
{
	for(int i = 0; i < row; i++)
	{
		for(int j = 0; j < col; j++)
		{
			static T s;
			S >> s;
		}
	}
}

void surf_Simplified(AXI_STREAM_24& video_in, KeyPoint* keyPoints, unsigned int* kpn , int threshold){
#pragma HLS INTERFACE ap_stable port=threshold
#pragma HLS INTERFACE s_axilite  port=return
#pragma HLS INTERFACE s_axilite port=threshold bundle=threshold
#pragma HLS INTERFACE m_axi port=keyPoints depth=600 offset=slave bundle=keyPoints
#pragma HLS INTERFACE m_axi port=kpn depth=1 offset=slave bundle=pointNumber
#pragma HLS INTERFACE axis port=video_in

#pragma HLS DATAFLOW
	my::SURF surf;
	hls::Mat<ROW, COL, HLS_8UC3> img;
	static hls::stream<int> sum;

	hls::AXIvideo2Mat(video_in, img);
	surf.integralImg(img, sum);

 	/*¼ì²âÌØÕ÷µã*/
	surf.HessianDetector(sum, keyPoints, kpn, 3, 1, threshold);
}




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

void surf_Simplified(
		AXI_STREAM_24& video_in,
		SurfHB* detA0_io, SurfHB* detA1_io, SurfHB* detA2_io,
		SurfHB* detB0_io, SurfHB* detB1_io, SurfHB* detB2_io,
		SurfHB* detC0_io, SurfHB* detC1_io, SurfHB* detC2_io,
		KeyPoint* keyPoints,
		unsigned int* kpn ,
		int threshold)
{
#pragma HLS INTERFACE m_axi depth=467481 port=detA0_io offset=slave bundle=detA0_io
#pragma HLS INTERFACE m_axi depth=467481 port=detA1_io offset=slave bundle=detA1_io
#pragma HLS INTERFACE m_axi depth=467481 port=detA2_io offset=slave bundle=detA2_io
#pragma HLS INTERFACE m_axi depth=459225 port=detB0_io offset=slave bundle=detB0_io
#pragma HLS INTERFACE m_axi depth=459225 port=detB1_io offset=slave bundle=detB1_io
#pragma HLS INTERFACE m_axi depth=459225 port=detB2_io offset=slave bundle=detB2_io
#pragma HLS INTERFACE m_axi depth=451041 port=detC0_io offset=slave bundle=detC0_io
#pragma HLS INTERFACE m_axi depth=451041 port=detC1_io offset=slave bundle=detC1_io
#pragma HLS INTERFACE m_axi depth=451041 port=detC2_io offset=slave bundle=detC2_io
#pragma HLS INTERFACE ap_stable port=threshold
#pragma HLS INTERFACE s_axilite  port=return
#pragma HLS INTERFACE s_axilite port=threshold bundle=threshold
#pragma HLS INTERFACE m_axi port=keyPoints depth=600 offset=slave bundle=keyPoints
#pragma HLS INTERFACE m_axi port=kpn depth=1 offset=slave bundle=pointNumber
#pragma HLS INTERFACE axis port=video_in

	my::SURF surf;
	hls::Mat<ROW, COL, HLS_8UC3> img;
#pragma HLS DATAFLOW

	static hls::stream<int> sum;

	hls::AXIvideo2Mat(video_in, img);
	surf.integralImg(img, sum);

 	/*¼ì²âÌØÕ÷µã*/
	surf.HessianDetector(
			sum,
		    detA0_io, detA1_io, detA2_io,
		    detB0_io, detB1_io, detB2_io,
		    detC0_io, detC1_io, detC2_io,
			keyPoints,
			kpn,
			3,
			1,
			threshold);
}




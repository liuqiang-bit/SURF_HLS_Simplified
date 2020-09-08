#include "mSURF.h"
#include "top.h"

template<typename T>
void consume(hls::stream<T>& S, int row, int col)
{
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
		{
			static T s;
			S >> s;
		}
	}
}

void surf_Simplified(
	AXI_STREAM_24& video_in,
	SurfHB* detA0_i, SurfHB* detA1_i, SurfHB* detA2_i,
	SurfHB* detB0_i, SurfHB* detB1_i, SurfHB* detB2_i,
	SurfHB* detC0_i, SurfHB* detC1_i, SurfHB* detC2_i,

	SurfHB* detA0_o, SurfHB* detA1_o, SurfHB* detA2_o,
	SurfHB* detB0_o, SurfHB* detB1_o, SurfHB* detB2_o,
	SurfHB* detC0_o, SurfHB* detC1_o, SurfHB* detC2_o,
	KeyPoint* keyPoints,
	unsigned int* kpn,
	int threshold)
{
#pragma HLS INTERFACE m_axi depth=467481 port=detA0_i offset=slave bundle=detA0_i
#pragma HLS INTERFACE m_axi depth=467481 port=detA1_i offset=slave bundle=detA1_i
#pragma HLS INTERFACE m_axi depth=467481 port=detA2_i offset=slave bundle=detA2_i
#pragma HLS INTERFACE m_axi depth=459225 port=detB0_i offset=slave bundle=detB0_i
#pragma HLS INTERFACE m_axi depth=459225 port=detB1_i offset=slave bundle=detB1_i
#pragma HLS INTERFACE m_axi depth=459225 port=detB2_i offset=slave bundle=detB2_i
#pragma HLS INTERFACE m_axi depth=451041 port=detC0_i offset=slave bundle=detC0_i
#pragma HLS INTERFACE m_axi depth=451041 port=detC1_i offset=slave bundle=detC1_i
#pragma HLS INTERFACE m_axi depth=451041 port=detC2_i offset=slave bundle=detC2_i

#pragma HLS INTERFACE m_axi depth=467481 port=detA0_o offset=slave bundle=detA0_o
#pragma HLS INTERFACE m_axi depth=467481 port=detA1_o offset=slave bundle=detA1_o
#pragma HLS INTERFACE m_axi depth=467481 port=detA2_o offset=slave bundle=detA2_o
#pragma HLS INTERFACE m_axi depth=459225 port=detB0_o offset=slave bundle=detB0_o
#pragma HLS INTERFACE m_axi depth=459225 port=detB1_o offset=slave bundle=detB1_o
#pragma HLS INTERFACE m_axi depth=459225 port=detB2_o offset=slave bundle=detB2_o
#pragma HLS INTERFACE m_axi depth=451041 port=detC0_o offset=slave bundle=detC0_o
#pragma HLS INTERFACE m_axi depth=451041 port=detC1_o offset=slave bundle=detC1_o
#pragma HLS INTERFACE m_axi depth=451041 port=detC2_o offset=slave bundle=detC2_o

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
		detA0_i, detA1_i, detA2_i,
		detB0_i, detB1_i, detB2_i,
		detC0_i, detC1_i, detC2_i,

		detA0_o, detA1_o, detA2_o,
		detB0_o, detB1_o, detB2_o,
		detC0_o, detC1_o, detC2_o,
		keyPoints,
		kpn,
		3,
		1,
		threshold);
}




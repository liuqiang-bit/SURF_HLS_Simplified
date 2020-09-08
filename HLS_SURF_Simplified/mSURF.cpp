#include "mSURF.h"
#include "hls_math.h"
/*
 * vivado HLS 2018.3需要包含，否则可能综合时报memcpy未定义
 */
#include "string.h"

using namespace my;
//#define DEBUG
#ifdef DEBUG
#include <fstream>
#endif

#ifdef DEBUG
std::ofstream fout_sum("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/sum.txt");
std::ofstream fout_pic("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/pic.txt");
std::ofstream fout_HBox("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/HBox.txt");
std::ofstream fout_sumBufIndex("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/sumBufIndex.txt");
std::ofstream fout_size_sampleSteps("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/size_sampleSteps.txt");
std::ofstream fout_middleIndices("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/size_middleIndices.txt");
std::ofstream fout_det0("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det0.txt");
std::ofstream fout_det1("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det1.txt");
std::ofstream fout_det2("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det2.txt");
std::ofstream fout_det3("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det3.txt");
std::ofstream fout_det4("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det4.txt");
std::ofstream fout_det5("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det5.txt");
std::ofstream fout_det6("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det6.txt");
std::ofstream fout_det7("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det7.txt");
std::ofstream fout_det8("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det8.txt");
std::ofstream fout_det0Index("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det0Index.txt");
std::ofstream fout_det1Index("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det1Index.txt");
std::ofstream fout_det2Index("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det2Index.txt");
std::ofstream fout_det3Index("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det3Index.txt");
std::ofstream fout_det4Index("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det4Index.txt");
std::ofstream fout_det5Index("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det5Index.txt");
std::ofstream fout_det6Index("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det6Index.txt");
std::ofstream fout_det7Index("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det7Index.txt");
std::ofstream fout_det8Index("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det8Index.txt");
std::ofstream fout_sum2buf("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/sum2buf.txt");
std::ofstream fout_sumBuf("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/sumBuf.txt");
std::ofstream fout_rIndex("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/rIndex.txt");
std::ofstream fout_NIndex("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/NIndex.txt");
std::ofstream fout_val0("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/val0.txt");
std::ofstream fout_keyPoint("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/keyPoint.txt");
std::ofstream fout_rOffset("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/rOffset.txt");
std::ofstream fout_det02mem("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det02mem.txt");
std::ofstream fout_det12mem("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det12mem.txt");
std::ofstream fout_det22mem("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/det22mem.txt");
std::ofstream fout_mem2det0("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/mem2det0.txt");
std::ofstream fout_mem2det1("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/mem2det1.txt");
std::ofstream fout_mem2det2("C:/Users/GUDONG/Desktop/HLS_SURF_Simplified_v4_1/common/OutputFile/mem2det2.txt");
#endif

static int margin = 3;

SURF::SURF()
{

}

void SURF::integralImg(hls::Mat<600, 800, HLS_8UC3>& img, hls::stream<int>& dst)
{
	static PIXEL_C3 s;
	static int pix_val = 0;
	static int d = 0;

	/*缓存两行积分结果*/
	static int buf[2][COL] = {0};
#pragma HLS ARRAY_PARTITION variable=buf complete dim=1

	ap_uint<1> preRow = 0, curtRow = ~preRow;

	integralImg_row:for (ap_uint<11> r = 0; r < sumRow; r++)
	{
		preRow = ~preRow; curtRow = ~curtRow;
		integralImg_col:for (ap_uint<11> c = 0; c < sumCol; c++)
		{
			/*积分图第一行第一列为0*/
			if(r == 0 || c == 0)
			{
				d = 0;
			}else{
				img >> s;
				pix_val = 0;
				integralImg_channel:for(int i = 0; i < 3; i++)
				{
					pix_val += s.val[i];
				}
				pix_val /= 3;

				/*还有优化余地：buf[preRow][c] 和 buf[preRow][c-1]需要2个周期才能读取完*/
				d = buf[preRow][c] - buf[preRow][c-1] + buf[curtRow][c-1] + pix_val;
			}
			buf[curtRow][c] = d;

			dst << d;

#ifdef DEBUG
			fout_pic << pix_val << " ";
			fout_sum << d << " ";
#endif
		}
#ifdef DEBUG
		fout_pic << std::endl;
		fout_sum << std::endl;
#endif
	}
}

SurfHB SURF::calcHaarPattern_x_y(int sumBuf[sumBufRow][sumCol], const SurfHB box[3][5], ap_uint< sumBufRow << 3 > sumBufIndex, int rOffset, int cOffset)
{

	SurfHB d = 0;
	calcHaarPattern_kn:for(int kn = 0; kn < 3; kn++)
	{
		d += (
				sumBuf[sumBufIndex.range((((int)box[kn][3] + 1 + rOffset) << 3) - 1, ((int)box[kn][3] + rOffset) << 3)][(int)box[kn][2] + cOffset]
			   -sumBuf[sumBufIndex.range((((int)box[kn][3] + 1 + rOffset) << 3) - 1, ((int)box[kn][3] + rOffset) << 3)][(int)box[kn][0] + cOffset]
			   -sumBuf[sumBufIndex.range((((int)box[kn][1] + 1 + rOffset) << 3) - 1, ((int)box[kn][1] + rOffset) << 3)][(int)box[kn][2] + cOffset]
			   +sumBuf[sumBufIndex.range((((int)box[kn][1] + 1 + rOffset) << 3) - 1, ((int)box[kn][1] + rOffset) << 3)][(int)box[kn][0] + cOffset]
		) * box[kn][4];
	}
	return d;
}

SurfHB SURF::calcHaarPattern_xy(int sumBuf[sumBufRow][sumCol], const SurfHB box[4][5], ap_uint< sumBufRow << 3 > sumBufIndex, int rOffset, int cOffset)
{

	SurfHB d = 0;
	calcHaarPattern_kn:for(int kn = 0; kn < 4; kn++)
	{
		d += (
				sumBuf[sumBufIndex.range((((int)box[kn][3] + 1 + rOffset) << 3) - 1, ((int)box[kn][3] + rOffset) << 3)][(int)box[kn][2] + cOffset]
			   -sumBuf[sumBufIndex.range((((int)box[kn][3] + 1 + rOffset) << 3) - 1, ((int)box[kn][3] + rOffset) << 3)][(int)box[kn][0] + cOffset]
			   -sumBuf[sumBufIndex.range((((int)box[kn][1] + 1 + rOffset) << 3) - 1, ((int)box[kn][1] + rOffset) << 3)][(int)box[kn][2] + cOffset]
			   +sumBuf[sumBufIndex.range((((int)box[kn][1] + 1 + rOffset) << 3) - 1, ((int)box[kn][1] + rOffset) << 3)][(int)box[kn][0] + cOffset]
		) * box[kn][4];
	}
	return d;
}
void SURF::createHessianBox_x_y(const int box[3][5], SurfHB dst[3][5], int oldSize, int newSize, int cols)
{
	SurfHB ratio = (SurfHB)newSize / oldSize;
	createHessianBox_i:for (int i = 0; i < 3; i++)
	{
		dst[i][0] = hls::round(box[i][0] * ratio);
		dst[i][1] = hls::round(box[i][1] * ratio);
		dst[i][2] = hls::round(box[i][2] * ratio);
		dst[i][3] = hls::round(box[i][3] * ratio);

		dst[i][4] = box[i][4] / (SurfHB)((dst[i][3] - dst[i][1]) * (dst[i][2] - dst[i][0]));

#ifdef DEBUG
		fout_HBox << dst[i][0] <<" "<< dst[i][1] <<" "<< dst[i][2] <<" "<< dst[i][3] <<" "<< dst[i][4] << std::endl;
#endif
	}
#ifdef DEBUG
	fout_HBox << std::endl;
#endif
}

void SURF::createHessianBox_xy(const int box[4][5], SurfHB dst[4][5], int oldSize, int newSize, int cols)
{
	SurfHB ratio = (SurfHB)newSize / oldSize;
	createHessianBox_i:for (int i = 0; i < 4; i++)
	{
		dst[i][0] = hls::round(box[i][0] * ratio);
		dst[i][1] = hls::round(box[i][1] * ratio);
		dst[i][2] = hls::round(box[i][2] * ratio);
		dst[i][3] = hls::round(box[i][3] * ratio);

		dst[i][4] = box[i][4] / (SurfHB)((dst[i][3] - dst[i][1]) * (dst[i][2] - dst[i][0]));

#ifdef DEBUG
		fout_HBox << dst[i][0] <<" "<< dst[i][1] <<" "<< dst[i][2] <<" "<< dst[i][3] <<" "<< dst[i][4] << std::endl;
#endif
	}
#ifdef DEBUG
	fout_HBox << std::endl;
#endif
}

void SURF::calcLayerDetAndTrace(
		hls::stream<int>& sum,
		SurfHB* detA0_io, SurfHB* detA1_io, SurfHB* detA2_io,
		SurfHB* detB0_io, SurfHB* detB1_io, SurfHB* detB2_io,
		SurfHB* detC0_io, SurfHB* detC1_io, SurfHB* detC2_io,
		int indexw)
{
#ifdef DEBUG
	int detT[nTotalLayers] = {0};
#endif
	int write_en[nTotalLayers] = {0};
	int offset[3] = {0};
	static const int detCol[nTotalLayers] = {791, 785, 779};
	static int sizes[nTotalLayers] = {9, 15, 21};								// 每一层用的 Harr模板的大小
	static int sampleSteps[nTotalLayers] = {0, 0, 0};							// 每一层用的采样步长是2的sampleSteps[nTotalLayers]次幂

	SurfHB det0Buf[791], det1Buf[785], det2Buf[779];
//#pragma HLS STREAM variable=det2Buf dim=1
//#pragma HLS STREAM variable=det1Buf dim=1
//#pragma HLS STREAM variable=det0Buf depth=791

	/*定义盒子滤波器*/
	static const int NX = 3, NY = 3, NXY = 4;
	static const SurfHB Dx[nTotalLayers][NX][5] =
	{
#include "common/InputFile/Dx.txt"
	};
	static const SurfHB Dy[nTotalLayers][NY][5] =
	{
#include "common/InputFile/Dy.txt"
	};
	static const  SurfHB Dxy[nTotalLayers][NXY][5] =
	{
#include "common/InputFile/Dxy.txt"
	};

	/*3层模板共用一个缓存数组，缓存数组的行数为最大模板的尺寸*/
	static int sumBuf[sumBufRow][sumCol];
	ap_uint< sumBufRow << 3 > sumBufIndex;
	static ap_uint<sumBufRow << 3> MSB = 0;

	int rIndex = -1;
	calcLayerDetAndTrace_row:for (int r = 0; r < sumRow; r++)
	{
		if(rIndex < sumBufRow - 1)
		{
			rIndex++;
		}
		else{
			rIndex = 0;
		}

#ifdef DEBUG
		fout_rIndex << rIndex << std::endl;
#endif

#pragma HLS LOOP_TRIPCOUNT min=1 max=601
		if(r < sumBufRow)
		{
			sumBufIndex.range(((r + 1) << 3) - 1, r << 3) = r;
#ifdef DEBUG
			fout_sumBufIndex << "将第" << r <<"行写入sumBuf第" << rIndex << "行"<< std::endl;
#endif
		}
		else{
#ifdef DEBUG
			fout_sumBufIndex << "将第" << r <<"行写入sumBuf第" << rIndex << "行"<< std::endl;
#endif
			MSB.range((sumBufRow << 3) - 1, (sumBufRow << 3) - 8) = sumBufIndex.range(7, 0);
			sumBufIndex = (sumBufIndex >> 8) | MSB;
#ifdef DEBUG
			for(int i = 0; i < sumBufRow; i++)
			{
				fout_sumBufIndex << "第" << i <<"行索引为：" << sumBufIndex.range(((i + 1) << 3) - 1, i << 3) << std::endl;
			}
#endif
		}

		int bufOffset[3] = {0};
		calcLayerDetAndTrace_col:for (int c = 0; c < sumCol; c++)
		{
			static SurfHB dx = 0, dy = 0, dxy = 0, dt = 0, tt = 0;
#pragma HLS LOOP_TRIPCOUNT min=1 max=801
			sum >> sumBuf[rIndex][c];

			/*所有尺寸的模板遍历积分图*/
			calcLayerDetAndTrace_layer:for(int k = 0; k < nTotalLayers; k++)
			{
				/*考虑此模板的采样步长*/
				if((r & (((int)1 << sampleSteps[k]) - 1)) == 0 && (c & (((int)1 << sampleSteps[k]) - 1)) == 0)
				{
					int cOffset = c - (sizes[k]);

					if(r > sizes[k] && cOffset > 0)
					{
						write_en[k] = 1;
						int rOffset = 0;
						if(r < sumBufRow)
						{
							rOffset = r - sizes[k];
						}
						else{
							rOffset = (sumBufRow - sizes[k]) - 1;
						}

#ifdef DEBUG
						if(k == 0 && c == sumCol - 1)
						{
							fout_rOffset << rOffset << std::endl;
							for(int kr = 0; kr <= sizes[k]; kr++)
							{
								for(int kc = 1; kc < sumCol; kc++)
								{
									fout_sumBuf << sumBuf[sumBufIndex.range(((kr + 1 + rOffset) << 3) - 1, (kr + rOffset) << 3)][kc] << " ";
								}
								fout_sumBuf << std::endl;
							}
							fout_sumBuf << std::endl;
						}
#endif

						dx  = calcHaarPattern_x_y(sumBuf, Dx[k], sumBufIndex, rOffset, cOffset);
						dy  = calcHaarPattern_x_y(sumBuf, Dy[k], sumBufIndex, rOffset, cOffset);
						dxy = calcHaarPattern_xy(sumBuf, Dxy[k], sumBufIndex, rOffset, cOffset);
						dt  = dx * dy - (SurfHB)0.9 * dxy * dxy;

						switch (k) {
						case 0:
							det0Buf[bufOffset[0]++] = dt;
							break;
						case 1:
							det1Buf[bufOffset[1]++] = dt;
							break;
						case 2:
							det2Buf[bufOffset[2]++] = dt;
							break;

						default:
							break;
						}

#ifdef DEBUG
						switch (k) {
						case 0:
							fout_det0 << dt <<" ";
							fout_det0Index <<"(" << r << "," << c << ") ";
							break;
						case 1:
							fout_det1 << dt <<" ";
							fout_det1Index <<"(" << r << "," << c << ") ";
							break;
						case 2:
							fout_det2 << dt <<" ";
							fout_det2Index <<"(" << r << "," << c << ") ";
							break;

						default:
							break;
						}
#endif
					}
					else{
						write_en[k] = 0;
					}
				}
			}
		}

		write_loop:for(int en = 0; en < nTotalLayers; en++)
		{
			if(write_en[en])
			{
				switch (indexw) {
				case 0:
				{
					switch (en) {
					case 0:
						memcpy(detA0_io + offset[en], det0Buf, detCol[en] << 2);
						break;
					case 1:
						memcpy(detA1_io + offset[en], det1Buf, detCol[en] << 2);
						break;
					case 2:
						memcpy(detA2_io + offset[en], det2Buf, detCol[en] << 2);
						break;
					default:
						break;
					}
					break;
				}
				case 1:
				{
					switch (en) {
					case 0:
						memcpy(detB0_io + offset[en], det0Buf, detCol[en] << 2);
						break;
					case 1:
						memcpy(detB1_io + offset[en], det1Buf, detCol[en] << 2);
						break;
					case 2:
						memcpy(detB2_io + offset[en], det2Buf, detCol[en] << 2);
						break;
					default:
						break;
					}
					break;
				}
				case 2:
				{
					switch (en) {
					case 0:
						memcpy(detC0_io + offset[en], det0Buf, detCol[en] << 2);
						break;
					case 1:
						memcpy(detC1_io + offset[en], det1Buf, detCol[en] << 2);
						break;
					case 2:
						memcpy(detC2_io + offset[en], det2Buf, detCol[en] << 2);
						break;
					default:
						break;
					}
					break;
				}

					default:
						break;
				}
				offset[en] += detCol[en];

#ifdef DEBUG
				for(int kc = 0; kc < detCol[en]; kc++)
				{
					switch (en) {
					case 0:
						fout_det02mem << detsBufPtr[en][kc] << " ";
						break;
					case 1:
						fout_det12mem << detsBufPtr[en][kc] << " ";
						break;
					case 2:
						fout_det22mem << detsBufPtr[en][kc] << " ";
						break;
					default:
						break;
					}
				}

				switch (en) {
				case 0:
					fout_det02mem << std::endl;
					break;
				case 1:
					fout_det12mem << std::endl;
					break;
				case 2:
					fout_det22mem << std::endl;
					break;
				default:
					break;
				}
#endif
			}
		}
#ifdef DEBUG
		fout_sum2buf << std::endl;
		fout_det0 << std::endl;
		fout_det1 << std::endl;
		fout_det2 << std::endl;
		fout_det3 << std::endl;
		fout_det4 << std::endl;
		fout_det5 << std::endl;
		fout_det6 << std::endl;
		fout_det7 << std::endl;
		fout_det8 << std::endl;
		fout_det0Index << std::endl;
		fout_det1Index << std::endl;
		fout_det2Index << std::endl;
		fout_det3Index << std::endl;
		fout_det4Index << std::endl;
		fout_det5Index << std::endl;
		fout_det6Index << std::endl;
		fout_det7Index << std::endl;
		fout_det8Index << std::endl;
#endif
	}
#ifdef DEBUG
	std::cout << "det0~det8数据量分别为：";
	for(int i = 0; i < nTotalLayers; i++)
	{
		std::cout << detT[i] <<" ";
	}
	std::cout << std::endl;
#endif
}

void SURF::findCharacteristicPoint(
		SurfHB* detA0_io, SurfHB* detA1_io, SurfHB* detA2_io,
		SurfHB* detB0_io, SurfHB* detB1_io, SurfHB* detB2_io,
		SurfHB* detC0_io, SurfHB* detC1_io, SurfHB* detC2_io,
		SurfHB hessianThreshold,
		KeyPoint* keyPoints,
		unsigned int* pointNumber,
		int indexr)
{
#ifdef DEBUG
	int detT[nTotalLayers] = {0};
#endif
	int offset[3] = {0};
	static const int detRow[nTotalLayers] = {591, 585, 579};
	static const int detCol[nTotalLayers] = {791, 785, 779};
	static int sizes[nTotalLayers] = {9, 15, 21};						// 每一层用的 Harr模板的大小
	static int sampleSteps[nTotalLayers] = {0, 0, 0};				// 每一层用的采样步长是2的sampleSteps[nTotalLayers]次幂
	static int middleIndices[nMiddleLayers] = {1};			// 中间层的索引值

	KeyPoint point;
	static SurfHB N1[3][3][791];

	int tmpPointNum = 0;
	ap_uint<2> bRow[3] = {0};
	int midIndex = 0;
	/*中间层第一行或第一列元素在原图中的坐标偏移量*/
	int iSOffset = 0;
	findCharacteristicPoint_layer:for(int ly = 0; ly < nMiddleLayers; ly++)
	{
		/*必须在每层模板都初始化rIndex，否则切换到其它层时rIndex可能不是从0开始*/
		int rIndex = -1;

		ap_uint<6>RowIndex = 0;
		ap_uint<6> MSB = 0;

#ifdef DEBUG
		fout_NIndex << "====================================初始索引为====================================" << std::endl;
		for(int Nr = 0; Nr < 3; Nr++)
		{
			fout_NIndex << "第" << Nr <<"行索引为：" << RowIndex.range(((Nr + 1) << 1) - 1, Nr << 1) << std::endl;
		}
		fout_NIndex << "==================================================================================" << std::endl;
#endif

		midIndex = middleIndices[ly];

		iSOffset = ((sizes[midIndex - 1] - 1) >> 1);

		findCharacteristicPoint_r0:for(int r = 0; r < detRow[midIndex - 1]; r++)
		{
			if(rIndex < 3 - 1)
			{
				rIndex++;
			}
			else{
				rIndex = 0;
			}

#ifdef DEBUG
			fout_NIndex << "将第" << r <<"行写入N的第" << rIndex << "行"<< std::endl;
#endif

			if(r < 3){
				RowIndex.range(((r + 1) << 1) - 1, r << 1) = r;
			}
			else{
				MSB.range(5,4) = RowIndex.range(1,0);
				RowIndex = (RowIndex >> 2) | MSB;
			}

#ifdef DEBUG
			for(int Nr = 0; Nr < 3; Nr++)
			{
				fout_NIndex << "第" << Nr <<"行索引为：" << RowIndex.range(((Nr + 1) << 1) - 1, Nr << 1) << std::endl;
			}
#endif
			bRow[0] = RowIndex.range(1,0);
			bRow[1] = RowIndex.range(3,2);
			bRow[2] = RowIndex.range(5,4);

			switch (indexr) {
			case 0:
				memcpy(&N1[0][rIndex][0], detA0_io + offset[0], detCol[0] << 2);
				break;
			case 1:
				memcpy(&N1[0][rIndex][0], detB0_io + offset[0], detCol[0] << 2);
				break;
			case 2:
				memcpy(&N1[0][rIndex][0], detC0_io + offset[0], detCol[0] << 2);
				break;
			default:
				break;
			}
			offset[0] += detCol[0];

			if(r >= margin && r < detRow[midIndex] + margin)
			{
				switch (indexr) {
				case 0:
					memcpy(&N1[1][rIndex][margin], detA1_io + offset[1], detCol[1] << 2);
					break;
				case 1:
					memcpy(&N1[1][rIndex][margin], detB1_io + offset[1], detCol[1] << 2);
					break;
				case 2:
					memcpy(&N1[1][rIndex][margin], detC1_io + offset[1], detCol[1] << 2);
					break;
				default:
					break;
				}
				offset[1] += detCol[1];
			}

			int maxMargin = (margin << 1);
			if(r >= maxMargin && r < detRow[midIndex + 1] + maxMargin)
			{
				switch (indexr) {
				case 0:
					memcpy(&N1[2][rIndex][maxMargin], detA2_io + offset[2], detCol[2] << 2);
					break;
				case 1:
					memcpy(&N1[2][rIndex][maxMargin], detB2_io + offset[2], detCol[2] << 2);
					break;
				case 2:
					memcpy(&N1[2][rIndex][maxMargin], detC2_io + offset[2], detCol[2] << 2);
					break;
				default:
					break;
				}
				offset[2] += detCol[2];
			}

			int firstIndex = maxMargin + 2;
			SurfHB val0  = 0;
			static int cOffset = -2;


			/*开始寻找特征点*/
			if(r >= firstIndex && r < detRow[midIndex + 1] + maxMargin)
			{
				findCharacteristicPoint_c0:for(int c = firstIndex; c < detCol[midIndex + 1] + maxMargin; c++)
				{
					val0 = N1[1][bRow[1]][c - 1];

					if(val0 > hessianThreshold)
					{
#ifdef DEBUG
						fout_val0 << val0 << std::endl;
#endif

						if(
								val0 > N1[0][bRow[0]][c - 2] && val0 > N1[0][bRow[0]][c - 1] && val0 > N1[0][bRow[0]][c]
							 && val0 > N1[0][bRow[1]][c - 2] && val0 > N1[0][bRow[1]][c - 1] && val0 > N1[0][bRow[1]][c]
							 && val0 > N1[0][bRow[2]][c - 2] && val0 > N1[0][bRow[2]][c - 1] && val0 > N1[0][bRow[2]][c]
							 && val0 > N1[1][bRow[0]][c - 2] && val0 > N1[1][bRow[0]][c - 1] && val0 > N1[1][bRow[0]][c]
							 && val0 > N1[1][bRow[1]][c - 2] 							     && val0 > N1[1][bRow[1]][c]
							 && val0 > N1[1][bRow[2]][c - 2] && val0 > N1[1][bRow[2]][c - 1] && val0 > N1[1][bRow[2]][c]
							 && val0 > N1[2][bRow[0]][c - 2] && val0 > N1[2][bRow[0]][c - 1] && val0 > N1[2][bRow[0]][c]
							 && val0 > N1[2][bRow[1]][c - 2] && val0 > N1[2][bRow[1]][c - 1] && val0 > N1[2][bRow[1]][c]
							 && val0 > N1[2][bRow[2]][c - 2] && val0 > N1[2][bRow[2]][c - 1] && val0 > N1[2][bRow[2]][c])
						{
							/*将坐标转换到原图像中的坐标*/
							point.range(31,17) = (r << sampleSteps[midIndex]) + iSOffset;
							point.range(16,2 ) = (c << sampleSteps[midIndex]) + iSOffset;
							point.range(1 ,0 ) = 0;

							keyPoints[tmpPointNum] = point;

#ifdef DEBUG
							fout_keyPoint << "(" << point.range(31,17) << "," << point.range(16,2) << ")" << std::endl;
#endif
							tmpPointNum++;
						}
					}
				}
			}
		}
	}
#ifdef DEBUG
	std::cout << "det0~det8读取次数分别为：";
	for(int i = 0; i < nTotalLayers; i++)
	{
		std::cout << detT[i] <<" ";
	}
	std::cout << std::endl;
	std::cout << "检测到" << tmpPointNum << "个特征点" << std::endl;
#endif
	*pointNumber = tmpPointNum;
	tmpPointNum = 0;
}

void SURF::HessianDetector(
		hls::stream<int>& sum,
		SurfHB* detA0_io, SurfHB* detA1_io, SurfHB* detA2_io,
		SurfHB* detB0_io, SurfHB* detB1_io, SurfHB* detB2_io,
		SurfHB* detC0_io, SurfHB* detC1_io, SurfHB* detC2_io,
		KeyPoint* keyPoints,
		unsigned int* pointNumber,
		int nOctaves,
		int nOctaveLayers,
		SurfHB hessianThreshold)
{
	static int indexw = 0, indexr = 0;

	indexr = indexw++;
	indexw = (indexw > 2)? 0: indexw;

	//不能一起综合
	calcLayerDetAndTrace(
			sum,
		    detA0_io, detA1_io, detA2_io,
		    detB0_io, detB1_io, detB2_io,
		    detC0_io, detC1_io, detC2_io,
			indexw);

	findCharacteristicPoint(
		    detA0_io, detA1_io, detA2_io,
		    detB0_io, detB1_io, detB2_io,
		    detC0_io, detC1_io, detC2_io,
			hessianThreshold,
			keyPoints,
			pointNumber,
			indexr);
}

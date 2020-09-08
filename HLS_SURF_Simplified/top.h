#ifndef _TOP_H_
#define _TOP_H_
#include "mType.h"

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
	int threshold);
#endif

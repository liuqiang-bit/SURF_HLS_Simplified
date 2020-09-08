#ifndef _TOP_H_
#define _TOP_H_
#include "mType.h"

void surf_Simplified(
	AXI_STREAM_24& video_in,
	SurfHB* detA0_io, SurfHB* detA1_io, SurfHB* detA2_io,
	SurfHB* detB0_io, SurfHB* detB1_io, SurfHB* detB2_io,
	SurfHB* detC0_io, SurfHB* detC1_io, SurfHB* detC2_io,
	KeyPoint* keyPoints,
	unsigned int* kpn,
	int threshold);
#endif

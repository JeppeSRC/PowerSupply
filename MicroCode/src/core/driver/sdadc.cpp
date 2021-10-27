#include "sdadc.h"
#include <sys/registers/dma.h>
#include <core/psu.h>

// DMA Channel 3 on DMA2

void SDADC::Initialize() {
	DMA2_CPAR3 = SDADC1 + 0x74;
	DMA2_CMAR3 = (uint32)&PSU::vReadADC;
	DMA2_CNDTR3 = 1; // One 4 byte transfer
	DMA2_CCR3 = DMA_CCR_PL(2) | DMA_CCR_MSIZE(2) | DMA_CCR_PSIZE(2) | DMA_CCR_CIRC | DMA_CCR_EN;

	SDADC1_CONF0R = 0x0C000000;
	SDADC2_CONF0R = 0x0C000000;
	SDADC1_CR1 = 0x20000; // RDMAEN
	SDADC2_CR1 = 0x08000; // RSYNC
	SDADC1_CR2 = 1; //ADON
	SDADC2_CR2 = 1; //ADON

	while (SDADC1_ISR & 0x8000); // Wait for stabilization
	while (SDADC2_ISR & 0x8000); // Wait for stabilization

	SDADC1_CR2 = 0x11; // Start calibration
	SDADC2_CR2 = 0x11; // Start calibration

	while ((SDADC1_ISR & 0x01) == 0);
	while ((SDADC2_ISR & 0x01) == 0);

	SDADC1_CLRISR = 0x1;
	SDADC2_CLRISR = 0x1;

	SDADC1_CR2 = 0x00C80001; // Continous mode on chanel 8, start conversion
	SDADC2_CR2 = 0x00070001; // channel 7

}
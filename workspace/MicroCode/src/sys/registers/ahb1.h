#ifndef SYS_REGISTERS_AHB1_H_
#define SYS_REGISTERS_AHB1_H_

struct DMA_ISR {
	//Channel 1
	unsigned char GIF1 : 1;
	unsigned char TCIF1 : 1;
	unsigned char HTIF1 : 1;
	unsigned char TEIF1 : 1;
	//Channel 2
	unsigned char GIF2 : 1;
	unsigned char TCIF2 : 1;
	unsigned char HTIF2 : 1;
	unsigned char TEIF2 : 1;
	//Channel 3
	unsigned char GIF3 : 1;
	unsigned char TCIF3 : 1;
	unsigned char HTIF3 : 1;
	unsigned char TEIF3 : 1;
	//Channel 4
	unsigned char GIF4 : 1;
	unsigned char TCIF4 : 1;
	unsigned char HTIF4 : 1;
	unsigned char TEIF4 : 1;
	//Channel 5
	unsigned char GIF5 : 1;
	unsigned char TCIF5 : 1;
	unsigned char HTIF5 : 1;
	unsigned char TEIF5 : 1;
	//Channel 6
	unsigned char GIF6 : 1;
	unsigned char TCIF6 : 1;
	unsigned char HTIF6 : 1;
	unsigned char TEIF6 : 1;
	//Channel 7
	unsigned char GIF7 : 1;
	unsigned char TCIF7 : 1;
	unsigned char HTIF7 : 1;
	unsigned char TEIF7 : 1;

	unsigned char reserved : 4;
};

struct DMA_IFCR {
						//Channel 1
	unsigned char CGIF1 : 1;
	unsigned char CTCIF1 : 1;
	unsigned char CHTIF1 : 1;
	unsigned char CTEIF1 : 1;
	//Channel 2
	unsigned char CGIF2 : 1;
	unsigned char CTCIF2 : 1;
	unsigned char CHTIF2 : 1;
	unsigned char CTEIF2 : 1;
	//Channel 3
	unsigned char CGIF3 : 1;
	unsigned char CTCIF3 : 1;
	unsigned char CHTIF3 : 1;
	unsigned char CTEIF3 : 1;
	//Channel 4
	unsigned char FGIF4 : 1;
	unsigned char FTCIF4 : 1;
	unsigned char FHTIF4 : 1;
	unsigned char FTEIF4 : 1;
	//Channel 5
	unsigned char CGIF5 : 1;
	unsigned char CTCIF5 : 1;
	unsigned char CHTIF5 : 1;
	unsigned char CTEIF5 : 1;
	//Channel 6
	unsigned char CGIF6 : 1;
	unsigned char CTCIF6 : 1;
	unsigned char CHTIF6 : 1;
	unsigned char CTEIF6 : 1;
	//Channel 7
	unsigned char CGIF7 : 1;
	unsigned char CTCIF7 : 1;
	unsigned char CHTIF7 : 1;
	unsigned char CTEIF7 : 1;

	unsigned char reserved : 4;
};

struct DMA_CCRx {
	unsigned char EN : 1;
	unsigned char TCIE : 1;
	unsigned char HTIE : 1;
	unsigned char TEIE : 1;
	unsigned char DIR : 1;
	unsigned char CIRC : 1;
	unsigned char PINC : 1;
	unsigned char MINC : 1;
	unsigned char PSIZE : 2;
	unsigned char MSIZE : 2;
	unsigned char PL : 2;
	unsigned char MEM2MEM : 1;

	unsigned int reserved : 17;
};

struct DMA_CNDTRx {
	unsigned short NDT : 16;
	unsigned short reserved : 16;
};

struct DMA_CPARx {
	unsigned int PA : 32;
};

struct DMA_CMARx {
	unsigned int MA : 32;
};

#define DMA_CHANNEL(n) struct DMA_CCRx CCR##n; struct DMA_CNDTRx CNDTR##n; struct DMA_CPARx CPAR##n; struct DMA_CMARx CMAR##n;

struct DMAx {
	struct DMA_ISR ISR;
	struct DMA_IFCR IFCR;

	DMA_CHANNEL(1);
	DMA_CHANNEL(2);
	DMA_CHANNEL(3);
	DMA_CHANNEL(4);
	DMA_CHANNEL(5);
	DMA_CHANNEL(6);
	DMA_CHANNEL(7);

};

#define DMA1 ((struct DMAx*)0x40020000)
#define DMA2 ((struct DMAx*)0x40020400)

#endif

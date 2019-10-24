#include <sys/setup.h>

volatile uint32 vSet = 0;
volatile uint32 cSet = 0;

void EXTI0_Handler() { //Encoder 0 (Voltage)
	vSet += (GPIOA_IDR & IDR(1, 1)) >> 1;
}

void EXTI5_9_Handler() { //Encoder 1 (Current)
	cSet += (GPIOB_IDR & IDR(7, 1)) >> 7;
}

void EXTI2TS_Handler() { // Switch (Encoder 0)

}

void EXTI3_Handler() { //Swicth (Encoder 1)

}

volatile uint8 outputOn = 0;

int main() {
	Initialize();
	
	while (1) {
	
	}

}

#include <sys/setup.h>

volatile unsigned int vSet = 0;
volatile unsigned int cSet = 0;

void EXTI0_Handler() { //Encoder 0 (Voltage)
	vSet += (GPIOA_IDR & IDR(1, 1)) >> 1;
}

void EXTI5_9_Handler() { //Encoder 1 (Current)
	cSet += (GPIOB_IDR & IDR(7, 1)) >> 7;
}

int main() {
	Initialize();
	

}

#include <sys/setup.h>

volatile unsigned int vSet = 0;
volatile unsigned int cSet = 0;

void EXTI0_Handler() { //Encoder 0 (Voltage)
	vSet += (GPIOA_IDR(&, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) >> 1);
}

void EXTI5_9_Handler() { //Encoder 1 (Current)
	cSet += (GPIOB_IDR(&, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0) >> 1);
}

int main() {
	Initialize();
	

}

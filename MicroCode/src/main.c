#include <sys/registers/registers.h>

int main() {

	DAC1->DHR12L1.DACC1DHR = 1234;

}

#include <sys/setup.h>
#include <sys/time.h>
#include <core/driver/display.h>
#include <sys/memory.h>
#include <core/string.h>
#include <sys/sys.h>

char line1Buffer[17] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
char line2Buffer[17] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };

int main() {
	Initialize();

	sprintf(line1Buffer, 16, "Test 0x%4h", 0xDEADBEEF);

	DisplayPrint(0x40, line1Buffer);

	asm("b .");
}

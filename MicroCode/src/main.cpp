#include <sys/setup.h>
#include <sys/time.h>
#include <core/driver/display.h>
#include <sys/memory.h>
#include <core/string.h>
#include <sys/sys.h>
#include <core/driver/usart.h>

char line1Buffer[17] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
char line2Buffer[17] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };

int main() {
	Initialize();

	USART::Initialize();

	Display::Print(0x0, "Initialized");

	USART::Send(0x10);
	Display::Clear();
	Display::Print(0x0, "Sent");

	asm("b .");
}

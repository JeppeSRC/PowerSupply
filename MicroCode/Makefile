CC=arm-none-eabi-gcc
AS=arm-none-eabi-as

AFLAGS= -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16
CFLAGS= $(AFLAGS) -O3 -Wno-unknown-pragmas -Wno-nonnull-compare -Wall
LFLAGS= -nostartfiles -nodefaultlibs -nostdlib -Wl,--gc-sections

INCLUDES= -Isrc/ 

MAIN= MicroCode.elf

SRC= $(wildcard */*.c */*/*.c */*/*/*.c */*/*/*/*.c */*/*/*/*/*.c */*.asm */*/*.asm */*/*/*.asm */*/*/*/*.asm */*/*/*/*/*.asm)
OBJ= $(subst src/,obj/,$(subst .c,.o,$(subst .asm,.o,$(SRC))))

.PHONY: build
build: makeDirs $(MAIN)
	@echo Complete

$(MAIN): $(subst obj/,src/,$(OBJ))
	@echo Linking
	@$(CC) $(CFLAGS) $(LFLAGS) $(INCLUDES) --specs=nosys.specs -T"LinkerScript.ld" -Wl,-Map=output.map -o $(MAIN) $(OBJ)

%.o: %.c
	@echo Compiling $<
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $(subst src/,obj/,$@)

%.o: %.asm
	@echo Assembling $<
	@$(AS) $(AFLAGS) $(INCLUDES) -c $< -o $(subst src/,obj/,$@)

makeDirs:
	@if not exist obj\sys mkdir obj\sys obj\core\driver

.PHONY: clean
clean:
	@rmdir /Q /S obj

test:
	@echo $(SRC)
	@echo $(OBJ)
	@echo $(subst obj/,src/,$(OBJ))
	
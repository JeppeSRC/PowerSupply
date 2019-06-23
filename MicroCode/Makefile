CC=arm-none-eabi-gcc
AS=arm-none-eabi-as

CFALGS= -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -Wall
LFLAGS= -nostartfiles -nodefaultlibs -nostdlib -Wl,--gc-sections

INCLUDES= -Isrc/ 

SRC= $(wildcard src/**/*.c) $(wildcard */*.c) 
ASRC= $(wildcard src/**/*.asm) $(wildcard */*.asm)

OBJ= $(SRC:.c=.o)
AOBJ= $(ASRC:.asm=.o)

MAIN= MicroCode.elf

.PHONY: clean

all: $(MAIN)
	@echo Complete

$(MAIN): obj/$(OBJ) obj/$(AOBJ)
	@echo Linking
	@$(CC) $(CFLAGS) $(LFLAGS) $(INCLUDES) --specs=nosys.specs -T"LinkerScript.ld" -Wl,-Map=output.map -o $(MAIN) obj/$(OBJ) obj/$(AOBJ)

obj/%.o: %.c
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@
	@echo Compiling $<

obj/%.o: %.asm
	@$(AS) $(CFLAGS) $(INCLUDES) -c $< -o $@
	@echo Compiling $<

clean:
	rm -rf obj/**.o

test:
	@echo $(SRC)
	@echo $(OBJ)
ENTRY(Reset_Handler)

MEMORY {
  FLASH (rx)  : ORIGIN = 0x08000000, LENGTH = 0x10000 /*64K*/
  RAM (xrw)   : ORIGIN = 0x20000000, LENGTH = 0x04000 /*16K*/
  FLASH2 (rx)  : ORIGIN = 0x08002000, LENGTH = 0x8000 /*64K*/
}


SECTIONS {

  .isr_vector : {
    . = ALIGN(4);
    KEEP(*(.isr_vector))
    . = ALIGN(4);
  } > FLASH

  .text : {
    *(.text)
    *(.text*)
    *(.glue_7)
    *(.glue_7t)
    . = ALIGN(4);
    _textend = .;
  } > FLASH2

  .rodata : {
    . = ALIGN(4);
    *(.rodata)
    *(.rodata*)
    . = ALIGN(4);
  } > FLASH2

  _sidatastart = LOADADDR(.data);

  .data : {
    . = ALIGN(4);
    _datastart = .;
    *(.data)
    *(.data*)
    . = ALIGN(4);
    _dataend = .;
  } > RAM AT > FLASH2

  .bss : {
    . = ALIGN(4);
    _bssstart = .;
    *(.bss)
    *(.bss*)
    *(COMMON)
    . = ALIGN(4);
    _bssend = .;
  } > RAM

}
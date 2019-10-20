.syntax unified
.thumb 

.global isr_vector
.global Reset_Handler
.global Default_Handler

.extern _textend
.extern _datastart
.extern _dataend
.extern _bssstart
.extern _bssend
.extern main


.macro IRQ handler
    .word \handler
    .weak \handler
    .set  \handler, Default_Handler
.endm

.section .isr_vector,"a"

isr_vector:
    .word 0x20004000 //intitial SP value top of memory (16K)
    .word Reset_Handler
    IRQ NMI_Handler
    IRQ HardFault_Handler
    IRQ MMFault_Handler
    IRQ BusFault_Handler
    IRQ UsageFault_Handler
    .word 0
    .word 0
    .word 0
    .word 0
    IRQ SVCall_Handler
    .word 0
    .word 0
    IRQ PendSV_Handler
    IRQ SysTick_Handler
    IRQ WWDG_Handler //position 0
    IRQ PVD_Handler
    IRQ TAMP_Handerl
    IRQ RTC_WKUP_Handler
    IRQ FLASH_Handler
    IRQ RCC_Handler
    IRQ EXTI0_Handler
    IRQ EXTI1_Handler
    IRQ EXTI2TS_Handler
    IRQ EXTI3_Handler
    IRQ EXTI4_Handler
    IRQ DMA1_CH1_Handler
    IRQ DMA1_CH2_Handler
    IRQ DMA1_CH3_Handler
    IRQ DMA1_CH4_Handler
    IRQ DMA1_CH5_Handler
    IRQ DMA1_CH6_Handler
    IRQ DMA1_CH7_Handler
    IRQ ADC1_Handler
    IRQ CANTX_Handler
    IRQ CANRXD_Handler
    IRQ RXI_Handler
    IRQ SCE_Handler
    IRQ EXTI5_9_Handler
    IRQ TIM15_Handler
    IRQ TIM16_Handler
    IRQ TIM17_Handler
    IRQ TIM18_DAC2_Handler
    IRQ TIM2_Handler
    IRQ TIM3_Handler
    IRQ TIM4_Handler
    IRQ I2C1_EV_Handler
    IRQ I2C1_ER_Handler
    IRQ I2C2_EV_Handler
    IRQ I2C2_ER_Handler
    IRQ SPI1_Handler
    IRQ SPI2_Handler
    IRQ USART1_Handler
    IRQ USART2_Handler
    IRQ USART3_Handler
    IRQ EXTI15_10_Handler
    IRQ RTC_ALARM_IT_Handler
    IRQ CEC_Handler
    IRQ TIM12_Handler
    IRQ TIM13_Handler
    IRQ TIM14_Handler
    .word 0
    .word 0
    .word 0
    .word 0
    IRQ TIM5_Handler
    IRQ SPI3_Handler
    .word 0
    .word 0
    IRQ TIM6_DAC1_Handler
    IRQ TIM7_Handler
    IRQ DMA2_CH1_Handler
    IRQ DMA2_CH2_Handler
    IRQ DMA2_CH3_Handler
    IRQ DMA2_CH4_Handler
    IRQ DMA2_CH5_Handler
    IRQ SDADC1_Handler
    IRQ SDADC2_Handler
    IRQ SDADC3_Handler
    IRQ COMP1_2_Handler
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    IRQ USB_HP_Handler
    IRQ USB_LP_Handler
    IRQ USB_WAKEUP_Handler
    .word 0
    IRQ TIM19_Handler
    .word 0
    .word 0
    IRQ FPU_Handler

.section .text

            .align 4
TEXT_END:   .word _textend
DATA_START: .word _datastart
DATA_END:   .word _dataend
BSS_START:  .word _bssstart
BSS_END:    .word _bssend

Reset_Handler:
    ldr r0, TEXT_END 
    ldr r1, DATA_START
    ldr r2, DATA_END
    subs r2, r1
    beq DataZero

DataCopy:
    ldrb r3, [r0], #1
    strb r3, [r1], #1
    subs r2, #1
    bne DataCopy

DataZero:
    ldr r0, BSS_START
    ldr r1, BSS_END
    subs r1, r0
    beq Main

    eor r2, r2

BssZero:
    strb r2, [r0], #1
    subs r1, #1
    bne BssZero

Main:
    eor r0, r0
    eor r1, r1

    bl main
	
	b .

Default_Handler:
    b .


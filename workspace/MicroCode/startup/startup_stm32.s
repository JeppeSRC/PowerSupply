/**
  ******************************************************************************
  * @file      startup_stm32.s dedicated to STM32F373C8Tx device
  * @author    Ac6
  * @version   V1.0.0
  * @date      2019-04-05
  ******************************************************************************
  */

.syntax unified
.cpu cortex-m4
.fpu softvfp
.thumb

.global g_pfnVectors
.global Default_Handler

/* start address for the initialization values of the .data section.
defined in linker script */
.word _sidata
/* start address for the .data section. defined in linker script */
.word _sdata
/* end address for the .data section. defined in linker script */
.word _edata
/* start address for the .bss section. defined in linker script */
.word _sbss
/* end address for the .bss section. defined in linker script */
.word _ebss

/**
 * @brief  This is the code that gets called when the processor first
 *          starts execution following a reset event. Only the absolutely
 *          necessary set is performed, after which the application
 *          supplied main() routine is called.
 * @param  None
 * @retval : None
*/

  .section .text.Reset_Handler
  .weak Reset_Handler
  .type Reset_Handler, %function
Reset_Handler:
  ldr   r0, =_estack
  mov   sp, r0          /* set stack pointer */

/* Copy the data segment initializers from flash to SRAM */
  ldr r0, =_sdata
  ldr r1, =_edata
  ldr r2, =_sidata
  movs r3, #0
  b LoopCopyDataInit

CopyDataInit:
  ldr r4, [r2, r3]
  str r4, [r0, r3]
  adds r3, r3, #4

LoopCopyDataInit:
  adds r4, r0, r3
  cmp r4, r1
  bcc CopyDataInit
  
/* Zero fill the bss segment. */
  ldr r2, =_sbss
  ldr r4, =_ebss
  movs r3, #0
  b LoopFillZerobss

FillZerobss:
  str  r3, [r2]
  adds r2, r2, #4

LoopFillZerobss:
  cmp r2, r4
  bcc FillZerobss

/* Call the clock system intitialization function.*/
  bl  SystemInit
/* Call static constructors */
  bl __libc_init_array
/* Call the application's entry point.*/
  bl main

LoopForever:
    b LoopForever


.size Reset_Handler, .-Reset_Handler

/**
 * @brief  This is the code that gets called when the processor receives an
 *         unexpected interrupt.  This simply enters an infinite loop, preserving
 *         the system state for examination by a debugger.
 *
 * @param  None
 * @retval : None
*/
    .section .text.Default_Handler,"ax",%progbits
Default_Handler:
Infinite_Loop:
  b Infinite_Loop
  .size Default_Handler, .-Default_Handler
/******************************************************************************
*
* The STM32F373C8Tx vector table.  Note that the proper constructs
* must be placed on this to ensure that it ends up at physical address
* 0x0000.0000.
*
******************************************************************************/
   .section .isr_vector,"a",%progbits
  .type g_pfnVectors, %object
  .size g_pfnVectors, .-g_pfnVectors


g_pfnVectors:
  .word _estack
  .word Reset_Handler
  .word NMI_Handler
  .word HardFault_Handler
  .word	MemManage_Handler
  .word	BusFault_Handler
  .word	UsageFault_Handler
  .word	0
  .word	0
  .word	0
  .word	0
  .word	SVC_Handler
  .word	DebugMon_Handler
  .word	0
  .word	PendSV_Handler
  .word	SysTick_Handler
  .word	WWDG_IRQHandler      			/* Window Watchdog interrupt                                         */
  .word	PVD_IRQHandler       			/* Power voltage detector through EXTI line detection interrupt      */
  .word	TAMP_IRQHandler      			/* Tamper and timestamp through EXTI19 line                          */
  .word	RTC_WKUP_IRQHandler  			/* RTC                                                               */
  .word	FLASH_IRQHandler     			/* Flash global interrupt                                            */
  .word	RCC_IRQHandler       			/* RCC global interrupt                                              */
  .word	EXTI0_IRQHandler     			/* EXTI Line 0 interrupt                                             */
  .word	EXTI1_IRQHandler     			/* EXTI Line1 interrupt                                              */
  .word	EXTI2_TS_IRQHandler  			/* EXTI Line 2 and routing interface interrupt                       */
  .word	EXTI3_IRQHandler     			/* EXTI Line1 interrupt                                              */
  .word	EXTI4_IRQHandler     			/* EXTI Line4 interrupt                                              */
  .word	DMA1_CH1_IRQHandler  			/* DMA1 channel 1 interrupt                                          */
  .word	DMA1_CH2_IRQHandler  			/* DMA1 channel 2 interrupt                                          */
  .word	DMA1_CH3_IRQHandler  			/* DMA1 channel 3 interrupt                                          */
  .word	DMA1_CH4_IRQHandler  			/* DMA1 channel 4 interrupt                                          */
  .word	DMA1_CH5_IRQHandler  			/* DMA1 channel 5 interrupt                                          */
  .word	DMA1_CH6_IRQHandler  			/* DMA1 channel 6 interrupt                                          */
  .word	DMA1_CH7_IRQHandler  			/* DMA1 channel 7 interrupt                                          */
  .word	ADC1_IRQHandler      			/* ADC1 interrupt                                                    */
  .word	CAN_TX_IRQHandler    			/* USB high priority/CAN_TX interrupt                                */
  .word	CAN_RXD_IRQHandler   			/* USB low priority/CAN_RXD interrupt                                */
  .word	CAN_RXI_IRQHandler   			/* CAN_RXI interrupt                                                 */
  .word	CAN_SCE_IRQHandler   			/* CAN_SCE interrupt                                                 */
  .word	EXTI5_9_IRQHandler   			/* EXTI Line[9:5] interrupts                                         */
  .word	TIM15_IRQHandler     			/* Timer 15 global interrupt                                         */
  .word	TIM16_IRQHandler     			/* Timer 16 global interrupt                                         */
  .word	TIM17_IRQHandler     			/* Timer 17 global interrupt                                         */
  .word	TIM18_DAC_IRQHandler 			/* Timer 18 global interrupt/DAC3 underrun interrupt                 */
  .word	TIM2_IRQHandler      			/* Timer 2 global interrupt                                          */
  .word	TIM3_IRQHandler      			/* Timer 3 global interrupt                                          */
  .word	TIM4_IRQHandler      			/* Timer 4 global interrupt                                          */
  .word	I2C1_EV_IRQHandler   			/* I2C1_EV global interrupt/EXTI Line[3:2] interrupts                */
  .word	I2C1_ER_IRQHandler   			/* I2C1_ER                                                           */
  .word	I2C2_EV_IRQHandler   			/* I2C2_EV global interrupt/EXTI Line[4:2] interrupts                */
  .word	I2C2_ER_IRQHandler   			/* I2C2_ER                                                           */
  .word	SPI1_IRQHandler      			/* SPI1 global interrupt                                             */
  .word	SPI2_IRQHandler      			/* SPI2 global interrupt                                             */
  .word	USART1_IRQHandler    			/* USART1 global interrupt/EXTI25 (USART1 wakeup event)              */
  .word	USART2_IRQHandler    			/* USART2 global interrupt/EXTI26 (USART1 wakeup event)              */
  .word	USART3_IRQHandler    			/* USART3 global interrupt/EXTI28 (USART1 wakeup event)              */
  .word	EXTI15_10_IRQHandler 			/* EXTI Line[15:10] interrupts                                       */
  .word	RTC_ALARM_IRQHandler 			/* RTC alarm interrupt                                               */
  .word	CEC_IRQHandler       			/* CEC interrupt                                                     */
  .word	TIM12_IRQHandler     			/* Timer 12 global interrupt                                         */
  .word	TIM13_IRQHandler     			/* Timer 13 global interrupt                                         */
  .word	TIM14_IRQHandler     			/* Timer 14 global interrupt                                         */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	TIM5_IRQHandler      			/* Timer 5 global interrupt                                          */
  .word	SPI3_IRQHandler      			/* SPI3 global interrupt                                             */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	TIM6_DAC1_IRQHandler 			/* TIM6 global, DAC1 Cahnnel1 and Cahnnel2 underrun error Interrupts */
  .word	TIM7_IRQHandler      			/* Timer 7 global interrupt                                          */
  .word	DMA2_CH1_IRQHandler  			/* DMA2 channel interrupt                                            */
  .word	DMA2_CH2_IRQHandler  			/* DMA2 channel interrupt                                            */
  .word	DMA2_CH3_IRQHandler  			/* DMA2 channel interrupt                                            */
  .word	DMA2_CH4_IRQHandler  			/* DMA2 channel interrupt                                            */
  .word	DMA2_CH5_IRQHandler  			/* DMA2 channel interrupt                                            */
  .word	SDADC1_IRQHandler    			/* ADC sigma delta 1 (SDADC1) global interrupt                       */
  .word	SDADC2_IRQHandler    			/* ADC sigma delta 2 (SDADC2) global interrupt                       */
  .word	SDADC3_IRQHandler    			/* ADC sigma delta 3 (SDADC3) global interrupt                       */
  .word	COMP1_2_IRQHandler   			/* Comparator 1/comparator 2 global                                  */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	USB_HP_IRQHandler    			/* USB high priority interrupt                                       */
  .word	USB_LP_IRQHandler    			/* USB low priority interrupt                                        */
  .word	USB_WAKEUP_IRQHandler			/* USB wakeup interrupt                                              */
  .word	0                    			/* Reserved                                                          */
  .word	TIM19_IRQHandler     			/* Timer 19 global interrupt                                         */
  .word	0                    			/* Reserved                                                          */
  .word	0                    			/* Reserved                                                          */
  .word	FPU_IRQHandler       			/* Floating point unit interrupt                                     */

/*******************************************************************************
*
* Provide weak aliases for each Exception handler to the Default_Handler.
* As they are weak aliases, any function with the same name will override
* this definition.
*
*******************************************************************************/

  	.weak	NMI_Handler
	.thumb_set NMI_Handler,Default_Handler

  	.weak	HardFault_Handler
	.thumb_set HardFault_Handler,Default_Handler

  	.weak	MemManage_Handler
	.thumb_set MemManage_Handler,Default_Handler

  	.weak	BusFault_Handler
	.thumb_set BusFault_Handler,Default_Handler

	.weak	UsageFault_Handler
	.thumb_set UsageFault_Handler,Default_Handler
	
	.weak	SVC_Handler
	.thumb_set SVC_Handler,Default_Handler

	.weak	DebugMon_Handler
	.thumb_set DebugMon_Handler,Default_Handler
	
	.weak	PendSV_Handler
	.thumb_set PendSV_Handler,Default_Handler

	.weak	SysTick_Handler
	.thumb_set SysTick_Handler,Default_Handler

	.weak	WWDG_IRQHandler
	.thumb_set WWDG_IRQHandler,Default_Handler
	
	.weak	PVD_IRQHandler
	.thumb_set PVD_IRQHandler,Default_Handler
	
	.weak	TAMP_IRQHandler
	.thumb_set TAMP_IRQHandler,Default_Handler
	
	.weak	RTC_WKUP_IRQHandler
	.thumb_set RTC_WKUP_IRQHandler,Default_Handler
	
	.weak	FLASH_IRQHandler
	.thumb_set FLASH_IRQHandler,Default_Handler
	
	.weak	RCC_IRQHandler
	.thumb_set RCC_IRQHandler,Default_Handler
	
	.weak	EXTI0_IRQHandler
	.thumb_set EXTI0_IRQHandler,Default_Handler
	
	.weak	EXTI1_IRQHandler
	.thumb_set EXTI1_IRQHandler,Default_Handler
	
	.weak	EXTI2_TS_IRQHandler
	.thumb_set EXTI2_TS_IRQHandler,Default_Handler
	
	.weak	EXTI3_IRQHandler
	.thumb_set EXTI3_IRQHandler,Default_Handler
	
	.weak	EXTI4_IRQHandler
	.thumb_set EXTI4_IRQHandler,Default_Handler
	
	.weak	DMA1_CH1_IRQHandler
	.thumb_set DMA1_CH1_IRQHandler,Default_Handler
	
	.weak	DMA1_CH2_IRQHandler
	.thumb_set DMA1_CH2_IRQHandler,Default_Handler
	
	.weak	DMA1_CH3_IRQHandler
	.thumb_set DMA1_CH3_IRQHandler,Default_Handler
	
	.weak	DMA1_CH4_IRQHandler
	.thumb_set DMA1_CH4_IRQHandler,Default_Handler
	
	.weak	DMA1_CH5_IRQHandler
	.thumb_set DMA1_CH5_IRQHandler,Default_Handler
	
	.weak	DMA1_CH6_IRQHandler
	.thumb_set DMA1_CH6_IRQHandler,Default_Handler
	
	.weak	DMA1_CH7_IRQHandler
	.thumb_set DMA1_CH7_IRQHandler,Default_Handler
	
	.weak	ADC1_IRQHandler
	.thumb_set ADC1_IRQHandler,Default_Handler
	
	.weak	CAN_TX_IRQHandler
	.thumb_set CAN_TX_IRQHandler,Default_Handler
	
	.weak	CAN_RXD_IRQHandler
	.thumb_set CAN_RXD_IRQHandler,Default_Handler
	
	.weak	CAN_RXI_IRQHandler
	.thumb_set CAN_RXI_IRQHandler,Default_Handler
	
	.weak	CAN_SCE_IRQHandler
	.thumb_set CAN_SCE_IRQHandler,Default_Handler
	
	.weak	EXTI5_9_IRQHandler
	.thumb_set EXTI5_9_IRQHandler,Default_Handler
	
	.weak	TIM15_IRQHandler
	.thumb_set TIM15_IRQHandler,Default_Handler
	
	.weak	TIM16_IRQHandler
	.thumb_set TIM16_IRQHandler,Default_Handler
	
	.weak	TIM17_IRQHandler
	.thumb_set TIM17_IRQHandler,Default_Handler
	
	.weak	TIM18_DAC_IRQHandler
	.thumb_set TIM18_DAC_IRQHandler,Default_Handler
	
	.weak	TIM2_IRQHandler
	.thumb_set TIM2_IRQHandler,Default_Handler
	
	.weak	TIM3_IRQHandler
	.thumb_set TIM3_IRQHandler,Default_Handler
	
	.weak	TIM4_IRQHandler
	.thumb_set TIM4_IRQHandler,Default_Handler
	
	.weak	I2C1_EV_IRQHandler
	.thumb_set I2C1_EV_IRQHandler,Default_Handler
	
	.weak	I2C1_ER_IRQHandler
	.thumb_set I2C1_ER_IRQHandler,Default_Handler
	
	.weak	I2C2_EV_IRQHandler
	.thumb_set I2C2_EV_IRQHandler,Default_Handler
	
	.weak	I2C2_ER_IRQHandler
	.thumb_set I2C2_ER_IRQHandler,Default_Handler
	
	.weak	SPI1_IRQHandler
	.thumb_set SPI1_IRQHandler,Default_Handler
	
	.weak	SPI2_IRQHandler
	.thumb_set SPI2_IRQHandler,Default_Handler
	
	.weak	USART1_IRQHandler
	.thumb_set USART1_IRQHandler,Default_Handler
	
	.weak	USART2_IRQHandler
	.thumb_set USART2_IRQHandler,Default_Handler
	
	.weak	USART3_IRQHandler
	.thumb_set USART3_IRQHandler,Default_Handler
	
	.weak	EXTI15_10_IRQHandler
	.thumb_set EXTI15_10_IRQHandler,Default_Handler
	
	.weak	RTC_ALARM_IRQHandler
	.thumb_set RTC_ALARM_IRQHandler,Default_Handler
	
	.weak	CEC_IRQHandler
	.thumb_set CEC_IRQHandler,Default_Handler
	
	.weak	TIM12_IRQHandler
	.thumb_set TIM12_IRQHandler,Default_Handler
	
	.weak	TIM13_IRQHandler
	.thumb_set TIM13_IRQHandler,Default_Handler
	
	.weak	TIM14_IRQHandler
	.thumb_set TIM14_IRQHandler,Default_Handler
	
	.weak	TIM5_IRQHandler
	.thumb_set TIM5_IRQHandler,Default_Handler
	
	.weak	SPI3_IRQHandler
	.thumb_set SPI3_IRQHandler,Default_Handler
	
	.weak	TIM6_DAC1_IRQHandler
	.thumb_set TIM6_DAC1_IRQHandler,Default_Handler
	
	.weak	TIM7_IRQHandler
	.thumb_set TIM7_IRQHandler,Default_Handler
	
	.weak	DMA2_CH1_IRQHandler
	.thumb_set DMA2_CH1_IRQHandler,Default_Handler
	
	.weak	DMA2_CH2_IRQHandler
	.thumb_set DMA2_CH2_IRQHandler,Default_Handler
	
	.weak	DMA2_CH3_IRQHandler
	.thumb_set DMA2_CH3_IRQHandler,Default_Handler
	
	.weak	DMA2_CH4_IRQHandler
	.thumb_set DMA2_CH4_IRQHandler,Default_Handler
	
	.weak	DMA2_CH5_IRQHandler
	.thumb_set DMA2_CH5_IRQHandler,Default_Handler
	
	.weak	SDADC1_IRQHandler
	.thumb_set SDADC1_IRQHandler,Default_Handler
	
	.weak	SDADC2_IRQHandler
	.thumb_set SDADC2_IRQHandler,Default_Handler
	
	.weak	SDADC3_IRQHandler
	.thumb_set SDADC3_IRQHandler,Default_Handler
	
	.weak	COMP1_2_IRQHandler
	.thumb_set COMP1_2_IRQHandler,Default_Handler
	
	.weak	USB_HP_IRQHandler
	.thumb_set USB_HP_IRQHandler,Default_Handler
	
	.weak	USB_LP_IRQHandler
	.thumb_set USB_LP_IRQHandler,Default_Handler
	
	.weak	USB_WAKEUP_IRQHandler
	.thumb_set USB_WAKEUP_IRQHandler,Default_Handler
	
	.weak	TIM19_IRQHandler
	.thumb_set TIM19_IRQHandler,Default_Handler
	
	.weak	FPU_IRQHandler
	.thumb_set FPU_IRQHandler,Default_Handler
	
	.weak	SystemInit

/************************ (C) COPYRIGHT Ac6 *****END OF FILE****/

#pragma once

#include <core/def.h>

#define GPIOA 0x48000000
#define GPIOB 0x48000400
#define GPIOC 0x48000800
#define GPIOD 0x48000C00
#define GPIOE 0x48001000
#define GPIOF 0x48001400

#define MODER(port, data) ((data & 0x3) << (port << 1))

#define GPIOA_MODER (*(volatile uint32*)GPIOA)
#define GPIOB_MODER (*(volatile uint32*)GPIOB)
#define GPIOC_MODER (*(volatile uint32*)GPIOC)
#define GPIOD_MODER (*(volatile uint32*)GPIOD)
#define GPIOE_MODER (*(volatile uint32*)GPIOE)
#define GPIOF_MODER (*(volatile uint32*)GPIOF)

#define OTYPER(port, data) ((data & 0x01) << port)

#define GPIOA_OTYPER (*(volatile uint32*)(GPIOA+0x04))
#define GPIOB_OTYPER (*(volatile uint32*)(GPIOB+0x04))
#define GPIOC_OTYPER (*(volatile uint32*)(GPIOC+0x04))
#define GPIOD_OTYPER (*(volatile uint32*)(GPIOD+0x04))
#define GPIOE_OTYPER (*(volatile uint32*)(GPIOE+0x04))
#define GPIOF_OTYPER (*(volatile uint32*)(GPIOF+0x04))

#define OSPEEDR(port, data) MODER(port, data)

#define GPIOA_OSPEEDR (*(volatile uint32*)(GPIOA+0x08))
#define GPIOB_OSPEEDR (*(volatile uint32*)(GPIOB+0x08))
#define GPIOC_OSPEEDR (*(volatile uint32*)(GPIOC+0x08))
#define GPIOD_OSPEEDR (*(volatile uint32*)(GPIOD+0x08))
#define GPIOE_OSPEEDR (*(volatile uint32*)(GPIOE+0x08))
#define GPIOF_OSPEEDR (*(volatile uint32*)(GPIOF+0x08))

#define PUPDR(port, data) MODER(port, data)

#define GPIOA_PUPDR (*(volatile uint32*)(GPIOA+0x0C))
#define GPIOB_PUPDR	(*(volatile uint32*)(GPIOB+0x0C))
#define GPIOC_PUPDR	(*(volatile uint32*)(GPIOC+0x0C))
#define GPIOD_PUPDR	(*(volatile uint32*)(GPIOD+0x0C))
#define GPIOE_PUPDR	(*(volatile uint32*)(GPIOE+0x0C))
#define GPIOF_PUPDR	(*(volatile uint32*)(GPIOF+0x0C))

#define IDR(port, data) OTYPER(port, data)

#define GPIOA_IDR (*(volatile uint32*)(GPIOA+0x10))
#define GPIOB_IDR (*(volatile uint32*)(GPIOB+0x10))
#define GPIOC_IDR (*(volatile uint32*)(GPIOC+0x10))
#define GPIOD_IDR (*(volatile uint32*)(GPIOD+0x10))
#define GPIOE_IDR (*(volatile uint32*)(GPIOE+0x10))
#define GPIOF_IDR (*(volatile uint32*)(GPIOF+0x10))

#define ODR(port, data) OTYPER(port, data)

#define GPIOA_ODR (*(volatile uint32*)(GPIOA+0x14))
#define GPIOB_ODR (*(volatile uint32*)(GPIOB+0x14))
#define GPIOC_ODR (*(volatile uint32*)(GPIOC+0x14))
#define GPIOD_ODR (*(volatile uint32*)(GPIOD+0x14))
#define GPIOE_ODR (*(volatile uint32*)(GPIOE+0x14))
#define GPIOF_ODR (*(volatile uint32*)(GPIOF+0x14))

#define BS(port) (1 << port)
#define BR(port) (1 << (port +  16))

#define GPIOA_BSRR (*(volatile uint32*)(GPIOA+0x18))
#define GPIOB_BSRR (*(volatile uint32*)(GPIOB+0x18))
#define GPIOC_BSRR (*(volatile uint32*)(GPIOC+0x18))
#define GPIOD_BSRR (*(volatile uint32*)(GPIOD+0x18))
#define GPIOE_BSRR (*(volatile uint32*)(GPIOE+0x18))
#define GPIOF_BSRR (*(volatile uint32*)(GPIOF+0x18))

#define GPIOA_LCKR (*(volatile uint32*)(GPIOA+0x1C))
#define GPIOB_LCKR (*(volatile uint32*)(GPIOB+0x1C))
#define GPIOC_LCKR (*(volatile uint32*)(GPIOC+0x1C))
#define GPIOD_LCKR (*(volatile uint32*)(GPIOD+0x1C))
#define GPIOE_LCKR (*(volatile uint32*)(GPIOE+0x1C))
#define GPIOF_LCKR (*(volatile uint32*)(GPIOF+0x1C))

#define GPIOA_AFRL (*(volatile uint32*)(GPIOA+0x20))
#define GPIOB_AFRL (*(volatile uint32*)(GPIOB+0x20))
#define GPIOC_AFRL (*(volatile uint32*)(GPIOC+0x20))
#define GPIOD_AFRL (*(volatile uint32*)(GPIOD+0x20))
#define GPIOE_AFRL (*(volatile uint32*)(GPIOE+0x20))
#define GPIOF_AFRL (*(volatile uint32*)(GPIOF+0x20))

#define GPIOA_AFRH (*(volatile uint32*)(GPIOA+0x24))
#define GPIOB_AFRH (*(volatile uint32*)(GPIOB+0x24))
#define GPIOC_AFRH (*(volatile uint32*)(GPIOC+0x24))
#define GPIOD_AFRH (*(volatile uint32*)(GPIOD+0x24))
#define GPIOE_AFRH (*(volatile uint32*)(GPIOE+0x24))
#define GPIOF_AFRH (*(volatile uint32*)(GPIOF+0x24))

#define GPIOA_BRR (*(volatile uint32*)(GPIOA+0x28))
#define GPIOB_BRR (*(volatile uint32*)(GPIOB+0x28))
#define GPIOC_BRR (*(volatile uint32*)(GPIOC+0x28))
#define GPIOD_BRR (*(volatile uint32*)(GPIOD+0x28))
#define GPIOE_BRR (*(volatile uint32*)(GPIOE+0x28))
#define GPIOF_BRR (*(volatile uint32*)(GPIOF+0x28))


#define AF0  0x00
#define AF1  0x01
#define AF2  0x02
#define AF3  0x03
#define AF4  0x04
#define AF5  0x05
#define AF6  0x06
#define AF7  0x07
#define AF8  0x08
#define AF9  0x09
#define AF10 0x0A
#define AF11 0x0B
#define AF12 0x0C
#define AF13 0x0D
#define AF14 0x0E
#define AF15 0x0F


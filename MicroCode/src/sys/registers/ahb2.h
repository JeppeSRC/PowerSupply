#ifndef SYS_REGISTERS_AHB2_H_
#define SYS_REGISTERS_AHB2_H_

#include <core/def.h>

#define GPIOA 0x48000000
#define GPIOB 0x48000400
#define GPIOC 0x48000800
#define GPIOD 0x48000C00
#define GPIOE 0x48001000
#define GPIOF 0x48001400

#define MODER(port, data) ((data & 0x3) << (port << 1))

#define GPIOA_MODER (*(uint32*)GPIOA)
#define GPIOB_MODER (*(uint32*)GPIOB)
#define GPIOC_MODER (*(uint32*)GPIOC)
#define GPIOD_MODER (*(uint32*)GPIOD)
#define GPIOE_MODER (*(uint32*)GPIOE)
#define GPIOF_MODER (*(uint32*)GPIOF)

#define OTYPER(port, data) ((data & 0x01) << port)

#define GPIOA_OTYPER (*(uint32*)(GPIOA+0x04))
#define GPIOB_OTYPER (*(uint32*)(GPIOB+0x04))
#define GPIOC_OTYPER (*(uint32*)(GPIOC+0x04))
#define GPIOD_OTYPER (*(uint32*)(GPIOD+0x04))
#define GPIOE_OTYPER (*(uint32*)(GPIOE+0x04))
#define GPIOF_OTYPER (*(uint32*)(GPIOF+0x04))

#define OSPEEDR(port, data) MODER(port, data)

#define GPIOA_OSPEEDR (*(uint32*)(GPIOA+0x08))
#define GPIOB_OSPEEDR (*(uint32*)(GPIOB+0x08))
#define GPIOC_OSPEEDR (*(uint32*)(GPIOC+0x08))
#define GPIOD_OSPEEDR (*(uint32*)(GPIOD+0x08))
#define GPIOE_OSPEEDR (*(uint32*)(GPIOE+0x08))
#define GPIOF_OSPEEDR (*(uint32*)(GPIOF+0x08))

#define PUPDR(port, data) MODER(port, data)

#define GPIOA_PUPDR (*(uint32*)(GPIOA+0x0C))
#define GPIOB_PUPDR	(*(uint32*)(GPIOB+0x0C))
#define GPIOC_PUPDR	(*(uint32*)(GPIOC+0x0C))
#define GPIOD_PUPDR	(*(uint32*)(GPIOD+0x0C))
#define GPIOE_PUPDR	(*(uint32*)(GPIOE+0x0C))
#define GPIOF_PUPDR	(*(uint32*)(GPIOF+0x0C))

#define IDR(port, data) OTYPER(port, data)

#define GPIOA_IDR (*(uint32*)(GPIOA+0x10))
#define GPIOB_IDR (*(uint32*)(GPIOB+0x10))
#define GPIOC_IDR (*(uint32*)(GPIOC+0x10))
#define GPIOD_IDR (*(uint32*)(GPIOD+0x10))
#define GPIOE_IDR (*(uint32*)(GPIOE+0x10))
#define GPIOF_IDR (*(uint32*)(GPIOF+0x10))

#define ODR(port, data) OTYPER(port, data)

#define GPIOA_ODR (*(uint32*)(GPIOA+0x14))
#define GPIOB_ODR (*(uint32*)(GPIOB+0x14))
#define GPIOC_ODR (*(uint32*)(GPIOC+0x14))
#define GPIOD_ODR (*(uint32*)(GPIOD+0x14))
#define GPIOE_ODR (*(uint32*)(GPIOE+0x14))
#define GPIOF_ODR (*(uint32*)(GPIOF+0x14))

#define BS(port, data) (1 << port)
#define BR(port, data) (1 << (port +  16))

#define GPIOA_BSRR (*(uint32*)(GPIOA+0x18))
#define GPIOB_BSRR (*(uint32*)(GPIOB+0x18))
#define GPIOC_BSRR (*(uint32*)(GPIOC+0x18))
#define GPIOD_BSRR (*(uint32*)(GPIOD+0x18))
#define GPIOE_BSRR (*(uint32*)(GPIOE+0x18))
#define GPIOF_BSRR (*(uint32*)(GPIOF+0x18))

#define GPIOA_LCKR (*(uint32*)(GPIOA+0x1C))
#define GPIOB_LCKR (*(uint32*)(GPIOB+0x1C))
#define GPIOC_LCKR (*(uint32*)(GPIOC+0x1C))
#define GPIOD_LCKR (*(uint32*)(GPIOD+0x1C))
#define GPIOE_LCKR (*(uint32*)(GPIOE+0x1C))
#define GPIOF_LCKR (*(uint32*)(GPIOF+0x1C))

#define GPIOA_AFRL (*(uint32*)(GPIOA+0x20))
#define GPIOB_AFRL (*(uint32*)(GPIOB+0x20))
#define GPIOC_AFRL (*(uint32*)(GPIOC+0x20))
#define GPIOD_AFRL (*(uint32*)(GPIOD+0x20))
#define GPIOE_AFRL (*(uint32*)(GPIOE+0x20))
#define GPIOF_AFRL (*(uint32*)(GPIOF+0x20))

#define GPIOA_AFRH (*(uint32*)(GPIOA+0x24))
#define GPIOB_AFRH (*(uint32*)(GPIOB+0x24))
#define GPIOC_AFRH (*(uint32*)(GPIOC+0x24))
#define GPIOD_AFRH (*(uint32*)(GPIOD+0x24))
#define GPIOE_AFRH (*(uint32*)(GPIOE+0x24))
#define GPIOF_AFRH (*(uint32*)(GPIOF+0x24))

#define GPIOA_BRR (*(uint32*)(GPIOA+0x28))
#define GPIOB_BRR (*(uint32*)(GPIOB+0x28))
#define GPIOC_BRR (*(uint32*)(GPIOC+0x28))
#define GPIOD_BRR (*(uint32*)(GPIOD+0x28))
#define GPIOE_BRR (*(uint32*)(GPIOE+0x28))
#define GPIOF_BRR (*(uint32*)(GPIOF+0x28))


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

#endif

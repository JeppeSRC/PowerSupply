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

#define GPIOA_MODER (*(unsigned int*)GPIOA)
#define GPIOB_MODER (*(unsigned int*)GPIOB)
#define GPIOC_MODER (*(unsigned int*)GPIOC)
#define GPIOD_MODER (*(unsigned int*)GPIOD)
#define GPIOE_MODER (*(unsigned int*)GPIOE)
#define GPIOF_MODER (*(unsigned int*)GPIOF)

#define OTYPER(port, data) ((data & 0x01) << port)

#define GPIOA_OTYPER (*(unsigned int*)(GPIOA+0x04))
#define GPIOB_OTYPER (*(unsigned int*)(GPIOB+0x04))
#define GPIOC_OTYPER (*(unsigned int*)(GPIOC+0x04))
#define GPIOD_OTYPER (*(unsigned int*)(GPIOD+0x04))
#define GPIOE_OTYPER (*(unsigned int*)(GPIOE+0x04))
#define GPIOF_OTYPER (*(unsigned int*)(GPIOF+0x04))

#define OSPEEDR(port, data) MODER(port, data)

#define GPIOA_OSPEEDR (*(unsigned int*)(GPIOA+0x08))
#define GPIOB_OSPEEDR (*(unsigned int*)(GPIOB+0x08))
#define GPIOC_OSPEEDR (*(unsigned int*)(GPIOC+0x08))
#define GPIOD_OSPEEDR (*(unsigned int*)(GPIOD+0x08))
#define GPIOE_OSPEEDR (*(unsigned int*)(GPIOE+0x08))
#define GPIOF_OSPEEDR (*(unsigned int*)(GPIOF+0x08))

#define PUPDR(port, data) MODER(port, data)

#define GPIOA_PUPDR (*(unsigned int*)(GPIOA+0x0C))
#define GPIOB_PUPDR	(*(unsigned int*)(GPIOB+0x0C))
#define GPIOC_PUPDR	(*(unsigned int*)(GPIOC+0x0C))
#define GPIOD_PUPDR	(*(unsigned int*)(GPIOD+0x0C))
#define GPIOE_PUPDR	(*(unsigned int*)(GPIOE+0x0C))
#define GPIOF_PUPDR	(*(unsigned int*)(GPIOF+0x0C))

#define IDR(port, data) OTYPER(port, data)

#define GPIOA_IDR (*(unsigned int*)(GPIOA+0x10))
#define GPIOB_IDR (*(unsigned int*)(GPIOB+0x10))
#define GPIOC_IDR (*(unsigned int*)(GPIOC+0x10))
#define GPIOD_IDR (*(unsigned int*)(GPIOD+0x10))
#define GPIOE_IDR (*(unsigned int*)(GPIOE+0x10))
#define GPIOF_IDR (*(unsigned int*)(GPIOF+0x10))

#define ODR(port, data) OTYPER(port, data)

#define GPIOA_ODR (*(unsigned int*)(GPIOA+0x14))
#define GPIOB_ODR (*(unsigned int*)(GPIOB+0x14))
#define GPIOC_ODR (*(unsigned int*)(GPIOC+0x14))
#define GPIOD_ODR (*(unsigned int*)(GPIOD+0x14))
#define GPIOE_ODR (*(unsigned int*)(GPIOE+0x14))
#define GPIOF_ODR (*(unsigned int*)(GPIOF+0x14))

#define BS(port, data) ((data & 0x01) << port)
#define BR(port, data) ((data & 0x01) << (port +  16))

#define GPIOA_BSRR (*(unsigned int*)(GPIOA+0x18))
#define GPIOB_BSRR (*(unsigned int*)(GPIOB+0x18))
#define GPIOC_BSRR (*(unsigned int*)(GPIOC+0x18))
#define GPIOD_BSRR (*(unsigned int*)(GPIOD+0x18))
#define GPIOE_BSRR (*(unsigned int*)(GPIOE+0x18))
#define GPIOF_BSRR (*(unsigned int*)(GPIOF+0x18))

#define GPIOA_LCKR (*(unsigned int*)(GPIOA+0x1C))
#define GPIOB_LCKR (*(unsigned int*)(GPIOB+0x1C))
#define GPIOC_LCKR (*(unsigned int*)(GPIOC+0x1C))
#define GPIOD_LCKR (*(unsigned int*)(GPIOD+0x1C))
#define GPIOE_LCKR (*(unsigned int*)(GPIOE+0x1C))
#define GPIOF_LCKR (*(unsigned int*)(GPIOF+0x1C))

#define GPIOA_AFRL (*(unsigned int*)(GPIOA+0x20))
#define GPIOB_AFRL (*(unsigned int*)(GPIOB+0x20))
#define GPIOC_AFRL (*(unsigned int*)(GPIOC+0x20))
#define GPIOD_AFRL (*(unsigned int*)(GPIOD+0x20))
#define GPIOE_AFRL (*(unsigned int*)(GPIOE+0x20))
#define GPIOF_AFRL (*(unsigned int*)(GPIOF+0x20))

#define GPIOA_AFRH (*(unsigned int*)(GPIOA+0x24))
#define GPIOB_AFRH (*(unsigned int*)(GPIOB+0x24))
#define GPIOC_AFRH (*(unsigned int*)(GPIOC+0x24))
#define GPIOD_AFRH (*(unsigned int*)(GPIOD+0x24))
#define GPIOE_AFRH (*(unsigned int*)(GPIOE+0x24))
#define GPIOF_AFRH (*(unsigned int*)(GPIOF+0x24))

#define GPIOA_BRR (*(unsigned int*)(GPIOA+0x28))
#define GPIOB_BRR (*(unsigned int*)(GPIOB+0x28))
#define GPIOC_BRR (*(unsigned int*)(GPIOC+0x28))
#define GPIOD_BRR (*(unsigned int*)(GPIOD+0x28))
#define GPIOE_BRR (*(unsigned int*)(GPIOE+0x28))
#define GPIOF_BRR (*(unsigned int*)(GPIOF+0x28))


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

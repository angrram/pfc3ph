/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.h
 * @brief          : Header for main.c file.
 *                   This file contains the common defines of the application.
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2025 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32g4xx_hal.h"

#include "stm32g4xx_nucleo.h"
#include <stdio.h>

#include "stm32g4xx_ll_adc.h"
#include "stm32g4xx_ll_dma.h"
#include "stm32g4xx_ll_fmac.h"
#include "stm32g4xx_ll_hrtim.h"
#include "stm32g4xx_ll_rcc.h"
#include "stm32g4xx_ll_bus.h"
#include "stm32g4xx_ll_crs.h"
#include "stm32g4xx_ll_system.h"
#include "stm32g4xx_ll_exti.h"
#include "stm32g4xx_ll_cortex.h"
#include "stm32g4xx_ll_utils.h"
#include "stm32g4xx_ll_pwr.h"
#include "stm32g4xx_ll_tim.h"
#include "stm32g4xx_ll_gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */
#define NUM_TAPS 1
/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define RCC_OSC32_IN_Pin LL_GPIO_PIN_14
#define RCC_OSC32_IN_GPIO_Port GPIOC
#define RCC_OSC32_OUT_Pin LL_GPIO_PIN_15
#define RCC_OSC32_OUT_GPIO_Port GPIOC
#define RCC_OSC_IN_Pin LL_GPIO_PIN_0
#define RCC_OSC_IN_GPIO_Port GPIOF
#define RCC_OSC_OUT_Pin LL_GPIO_PIN_1
#define RCC_OSC_OUT_GPIO_Port GPIOF
#define AUX_GPIO_Pin LL_GPIO_PIN_3
#define AUX_GPIO_GPIO_Port GPIOC
#define I_AC_1_Pin LL_GPIO_PIN_0
#define I_AC_1_GPIO_Port GPIOA
#define V_AC_1_Pin LL_GPIO_PIN_1
#define V_AC_1_GPIO_Port GPIOA
#define I_AC_2_Pin LL_GPIO_PIN_6
#define I_AC_2_GPIO_Port GPIOA
#define V_AC_2_Pin LL_GPIO_PIN_7
#define V_AC_2_GPIO_Port GPIOA
#define I_DC_OUT_Pin LL_GPIO_PIN_4
#define I_DC_OUT_GPIO_Port GPIOC
#define I_AC_3_Pin LL_GPIO_PIN_1
#define I_AC_3_GPIO_Port GPIOB
#define IAC_2_PWM_Pin LL_GPIO_PIN_10
#define IAC_2_PWM_GPIO_Port GPIOB
#define IAC_3_PWM_Pin LL_GPIO_PIN_11
#define IAC_3_PWM_GPIO_Port GPIOB
#define V_AC_3_Pin LL_GPIO_PIN_13
#define V_AC_3_GPIO_Port GPIOB
#define V_DC_OUT_Pin LL_GPIO_PIN_14
#define V_DC_OUT_GPIO_Port GPIOB
#define L3_UP_Pin LL_GPIO_PIN_8
#define L3_UP_GPIO_Port GPIOC
#define L3_DW_Pin LL_GPIO_PIN_9
#define L3_DW_GPIO_Port GPIOC
#define L1_UP_Pin LL_GPIO_PIN_8
#define L1_UP_GPIO_Port GPIOA
#define L1_DW_Pin LL_GPIO_PIN_9
#define L1_DW_GPIO_Port GPIOA
#define L2_UP_Pin LL_GPIO_PIN_10
#define L2_UP_GPIO_Port GPIOA
#define L2_DW_Pin LL_GPIO_PIN_11
#define L2_DW_GPIO_Port GPIOA
#define T_SWDIO_Pin LL_GPIO_PIN_13
#define T_SWDIO_GPIO_Port GPIOA
#define T_SWCLK_Pin LL_GPIO_PIN_14
#define T_SWCLK_GPIO_Port GPIOA
#define IAC_1_PWM_Pin LL_GPIO_PIN_15
#define IAC_1_PWM_GPIO_Port GPIOA
#define T_SWO_Pin LL_GPIO_PIN_3
#define T_SWO_GPIO_Port GPIOB
#define EN_PFC_Pin LL_GPIO_PIN_6
#define EN_PFC_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

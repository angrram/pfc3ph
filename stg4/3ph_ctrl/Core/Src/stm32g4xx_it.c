/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file    stm32g4xx_it.c
 * @brief   Interrupt Service Routines.
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

/* Includes ------------------------------------------------------------------*/
#include "stm32g4xx_it.h"
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "ctrl_ez.h"
#include "stm32g4xx_ll_gpio.h"
#include <stdint.h>
#include <stdio.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN TD */

/* USER CODE END TD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
float iac_1, iac_2, iac_3, vac_1, vac_2, vac_3, idc, vdc;
extern uint32_t adc1_data[18], adc2_data[18], adc3_data[12], i_ac[4];
float rty_Qa, rty_Qb, rty_Qc;
bool volatile rty_lock = true;
static volatile int tick, cnt = 0;
static volatile int tack;
float v1[400], v2[400], v3[400];
#define BIT2VOLT_CNT (float)1241.2121f
#define CONSTANT_VOLTS (float)0.232046897899365f
#define ZERO_DAC (float)2048.0f
#define VAC_GAIN (float)0.2050781
#define IAC_GAIN (float)0.01953125f
#define COMP1_MAX_GAIN (float)41846.0f
#define CONSTANT_VOLTS_2AMP_VAC ((float)0.205178)
#define OFFSET_VAC ((float)420.0f)

#define AC_CAL_12BITS_FM3 ((float)88.086022f)
#define AC_CAL_12BITS_CONST ((float)40.0f)
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
static inline void filter_fir(void);
static inline void ADC2REAL(void);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/* External variables --------------------------------------------------------*/

/* USER CODE BEGIN EV */

/* USER CODE END EV */

/******************************************************************************/
/*           Cortex-M4 Processor Interruption and Exception Handlers          */
/******************************************************************************/
/**
 * @brief This function handles Non maskable interrupt.
 */
void NMI_Handler(void) {
  /* USER CODE BEGIN NonMaskableInt_IRQn 0 */

  /* USER CODE END NonMaskableInt_IRQn 0 */
  /* USER CODE BEGIN NonMaskableInt_IRQn 1 */
  while (1) {
  }
  /* USER CODE END NonMaskableInt_IRQn 1 */
}

/**
 * @brief This function handles Hard fault interrupt.
 */
void HardFault_Handler(void) {
  /* USER CODE BEGIN HardFault_IRQn 0 */

  /* USER CODE END HardFault_IRQn 0 */
  while (1) {
    /* USER CODE BEGIN W1_HardFault_IRQn 0 */
    /* USER CODE END W1_HardFault_IRQn 0 */
  }
}

/**
 * @brief This function handles Memory management fault.
 */
void MemManage_Handler(void) {
  /* USER CODE BEGIN MemoryManagement_IRQn 0 */

  /* USER CODE END MemoryManagement_IRQn 0 */
  while (1) {
    /* USER CODE BEGIN W1_MemoryManagement_IRQn 0 */
    /* USER CODE END W1_MemoryManagement_IRQn 0 */
  }
}

/**
 * @brief This function handles Prefetch fault, memory access fault.
 */
void BusFault_Handler(void) {
  /* USER CODE BEGIN BusFault_IRQn 0 */

  /* USER CODE END BusFault_IRQn 0 */
  while (1) {
    /* USER CODE BEGIN W1_BusFault_IRQn 0 */
    /* USER CODE END W1_BusFault_IRQn 0 */
  }
}

/**
 * @brief This function handles Undefined instruction or illegal state.
 */
void UsageFault_Handler(void) {
  /* USER CODE BEGIN UsageFault_IRQn 0 */

  /* USER CODE END UsageFault_IRQn 0 */
  while (1) {
    /* USER CODE BEGIN W1_UsageFault_IRQn 0 */
    /* USER CODE END W1_UsageFault_IRQn 0 */
  }
}

/**
 * @brief This function handles System service call via SWI instruction.
 */
void SVC_Handler(void) {
  /* USER CODE BEGIN SVCall_IRQn 0 */

  /* USER CODE END SVCall_IRQn 0 */
  /* USER CODE BEGIN SVCall_IRQn 1 */

  /* USER CODE END SVCall_IRQn 1 */
}

/**
 * @brief This function handles Debug monitor.
 */
void DebugMon_Handler(void) {
  /* USER CODE BEGIN DebugMonitor_IRQn 0 */

  /* USER CODE END DebugMonitor_IRQn 0 */
  /* USER CODE BEGIN DebugMonitor_IRQn 1 */

  /* USER CODE END DebugMonitor_IRQn 1 */
}

/**
 * @brief This function handles Pendable request for system service.
 */
void PendSV_Handler(void) {
  /* USER CODE BEGIN PendSV_IRQn 0 */

  /* USER CODE END PendSV_IRQn 0 */
  /* USER CODE BEGIN PendSV_IRQn 1 */

  /* USER CODE END PendSV_IRQn 1 */
}

/**
 * @brief This function handles System tick timer.
 */
void SysTick_Handler(void) {
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}

/******************************************************************************/
/* STM32G4xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32g4xx.s).                    */
/******************************************************************************/

/**
 * @brief This function handles DMA1 channel1 global interrupt.
 */
void DMA1_Channel1_IRQHandler(void) {
  /* USER CODE BEGIN DMA1_Channel1_IRQn 0 */
  if (LL_DMA_IsActiveFlag_TC1(DMA1) == (uint32_t)1) {
    LL_DMA_ClearFlag_TC1(DMA1);
    // Process the completed transfer.

    // For example, mark a flag or process data from adc_buffer.
  }
  /* USER CODE END DMA1_Channel1_IRQn 0 */
  /* USER CODE BEGIN DMA1_Channel1_IRQn 1 */

  /* USER CODE END DMA1_Channel1_IRQn 1 */
}

/**
 * @brief This function handles DMA1 channel2 global interrupt.
 */
void DMA1_Channel2_IRQHandler(void) {
  /* USER CODE BEGIN DMA1_Channel2_IRQn 0 */
  if (LL_DMA_IsActiveFlag_TC1(DMA1) == (uint32_t)1) {
    LL_DMA_ClearFlag_TC2(DMA1);
    // Process the completed transfer.
    // For example, mark a flag or process data from adc_buffer.
  }
  /* USER CODE END DMA1_Channel2_IRQn 0 */
  /* USER CODE BEGIN DMA1_Channel2_IRQn 1 */

  /* USER CODE END DMA1_Channel2_IRQn 1 */
}

/**
 * @brief This function handles DMA1 channel3 global interrupt.
 */
void DMA1_Channel3_IRQHandler(void) {
  /* USER CODE BEGIN DMA1_Channel3_IRQn 0 */
  if (LL_DMA_IsActiveFlag_TC3(DMA1) == (uint32_t)1) {
    LL_DMA_ClearFlag_TC2(DMA1);
    // Process the completed transfer.
    // For example, mark a flag or process data from adc_buffer.
  }
  /* USER CODE END DMA1_Channel3_IRQn 0 */
  /* USER CODE BEGIN DMA1_Channel3_IRQn 1 */

  /* USER CODE END DMA1_Channel3_IRQn 1 */
}

/**
 * @brief This function handles DMA1 channel4 global interrupt.
 */
void DMA1_Channel4_IRQHandler(void) {
  /* USER CODE BEGIN DMA1_Channel4_IRQn 0 */

  /* USER CODE END DMA1_Channel4_IRQn 0 */
  /* USER CODE BEGIN DMA1_Channel4_IRQn 1 */

  /* USER CODE END DMA1_Channel4_IRQn 1 */
}

/**
 * @brief This function handles DMA1 channel5 global interrupt.
 */
void DMA1_Channel5_IRQHandler(void) {
  /* USER CODE BEGIN DMA1_Channel5_IRQn 0 */

  /* USER CODE END DMA1_Channel5_IRQn 0 */
  /* USER CODE BEGIN DMA1_Channel5_IRQn 1 */

  /* USER CODE END DMA1_Channel5_IRQn 1 */
}

/**
 * @brief This function handles DMA1 channel6 global interrupt.
 */
void DMA1_Channel6_IRQHandler(void) {
  /* USER CODE BEGIN DMA1_Channel6_IRQn 0 */

  /* USER CODE END DMA1_Channel6_IRQn 0 */
  /* USER CODE BEGIN DMA1_Channel6_IRQn 1 */

  /* USER CODE END DMA1_Channel6_IRQn 1 */
}

/**
 * @brief This function handles DMA1 channel7 global interrupt.
 */
void DMA1_Channel7_IRQHandler(void) {
  /* USER CODE BEGIN DMA1_Channel7_IRQn 0 */

  /* USER CODE END DMA1_Channel7_IRQn 0 */
  /* USER CODE BEGIN DMA1_Channel7_IRQn 1 */

  /* USER CODE END DMA1_Channel7_IRQn 1 */
}

/**
 * @brief This function handles TIM1 update interrupt and TIM16 global
 * interrupt.
 */
void TIM1_UP_TIM16_IRQHandler(void) {
  /* USER CODE BEGIN TIM1_UP_TIM16_IRQn 0 */
  __disable_irq();
  LL_GPIO_TogglePin(AUX_GPIO_GPIO_Port, AUX_GPIO_Pin);
  static volatile int counter = 0;
  if (counter < 100) {
    counter++;
  } else {
    static bool flag = true;

    // volatile uint32_t aux_rand = FMAC->SR;
    //  filter_fir();
    /*from adc to float*/
    ADC2REAL();
    if (cnt < 400) {
      v1[cnt] = iac_1;
      v2[cnt] = iac_2;
      v3[cnt] = iac_3;
      cnt++;
    }
    tick = TIM1->CNT;
    ctrl_ez_trigger_ctrl_ez(
        (const float *)&iac_1, (const float *)&iac_2, (const float *)&iac_3,
        (const float *)&vdc, (const float *)&vac_1, (const float *)&vac_3,
        (const float *)&vac_2, (float *)&rty_Qa, (float *)&rty_Qb,
        (float *)&rty_Qc, (bool *)&rty_lock);
    tack = TIM1->CNT;
    rty_Qa = (rty_Qa)*COMP1_MAX_GAIN;
    rty_Qb = (rty_Qb)*COMP1_MAX_GAIN;
    rty_Qc = (rty_Qc)*COMP1_MAX_GAIN;

    LL_HRTIM_TIM_SetCompare1(HRTIM1, LL_HRTIM_TIMER_A, (uint32_t)rty_Qa);
    LL_HRTIM_TIM_SetCompare1(HRTIM1, LL_HRTIM_TIMER_B, (uint32_t)rty_Qb);
    LL_HRTIM_TIM_SetCompare1(HRTIM1, LL_HRTIM_TIMER_E, (uint32_t)rty_Qc);
    if (!rty_lock && flag) {
      flag = false;

      LL_HRTIM_EnableOutput(HRTIM1,
                            LL_HRTIM_OUTPUT_TE1 | LL_HRTIM_OUTPUT_TE2 |
                                LL_HRTIM_OUTPUT_TB1 | LL_HRTIM_OUTPUT_TB2 |
                                LL_HRTIM_OUTPUT_TA1 | LL_HRTIM_OUTPUT_TA2);
      LL_HRTIM_TIM_CounterEnable(HRTIM1, LL_HRTIM_TIMER_A | LL_HRTIM_TIMER_B |
                                             LL_HRTIM_TIMER_E |
                                             LL_HRTIM_TIMER_MASTER);
      LL_GPIO_SetOutputPin(EN_PFC_GPIO_Port, EN_PFC_Pin);
    }
  }
  LL_ADC_REG_StartConversion(ADC1);
  LL_ADC_REG_StartConversion(ADC2);
  LL_ADC_REG_StartConversion(ADC3);
  if (LL_TIM_IsActiveFlag_UPDATE(TIM1))
    LL_TIM_ClearFlag_UPDATE(TIM1);
  LL_GPIO_TogglePin(AUX_GPIO_GPIO_Port, AUX_GPIO_Pin);
  __enable_irq();
  /* USER CODE END TIM1_UP_TIM16_IRQn 0 */
  /* USER CODE BEGIN TIM1_UP_TIM16_IRQn 1 */

  /* USER CODE END TIM1_UP_TIM16_IRQn 1 */
}

/**
 * @brief This function handles EXTI line[15:10] interrupts.
 */
void EXTI15_10_IRQHandler(void) {
  /* USER CODE BEGIN EXTI15_10_IRQn 0 */
  __disable_irq();
  LL_TIM_EnableIT_UPDATE(TIM1);
  LL_TIM_EnableCounter(TIM1);
  ctrl_ez_Init(&rty_Qa);
  __enable_irq();
  /* USER CODE END EXTI15_10_IRQn 0 */
  if (LL_EXTI_IsActiveFlag_0_31(LL_EXTI_LINE_13) != RESET) {
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_13);
    /* USER CODE BEGIN LL_EXTI_LINE_13 */

    /* USER CODE END LL_EXTI_LINE_13 */
  }
  /* USER CODE BEGIN EXTI15_10_IRQn 1 */

  /* USER CODE END EXTI15_10_IRQn 1 */
}

/* USER CODE BEGIN 1 */
static inline __attribute__((always_inline)) void filter_fir(void) {
  /*IAC1*/
  uint32_t tick, tack;
  LL_FMAC_DisableStart(FMAC);
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_LOAD_X1,
                     NUM_TAPS, 0, 0);
  LL_FMAC_WriteData(FMAC, adc1_data[0]);
  LL_FMAC_WriteData(FMAC, adc1_data[3]);
  LL_FMAC_WriteData(FMAC, adc1_data[6]);
  LL_FMAC_WriteData(FMAC, adc1_data[9]);
  LL_FMAC_WriteData(FMAC, adc1_data[12]);
  LL_FMAC_WriteData(FMAC, adc1_data[15]);
  while (LL_FMAC_IsEnabledStart(FMAC) == 1U)
    ;
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_CONVO_FIR,
                     NUM_TAPS, 0, 0);
  while (LL_FMAC_IsActiveFlag_YEMPTY(FMAC) == 1U)
    ;
  iac_1 = LL_FMAC_ReadData(FMAC);

  LL_FMAC_DisableStart(FMAC);
  /*VAC1*/
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_LOAD_X1,
                     NUM_TAPS, 0, 0);
  LL_FMAC_WriteData(FMAC, adc1_data[1]);
  LL_FMAC_WriteData(FMAC, adc1_data[4]);
  LL_FMAC_WriteData(FMAC, adc1_data[7]);
  LL_FMAC_WriteData(FMAC, adc1_data[10]);
  LL_FMAC_WriteData(FMAC, adc1_data[13]);
  LL_FMAC_WriteData(FMAC, adc1_data[16]);
  while (LL_FMAC_IsEnabledStart(FMAC) == 1U)
    ;
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_CONVO_FIR,
                     NUM_TAPS, 0, 0);
  while (LL_FMAC_IsActiveFlag_YEMPTY(FMAC) == 1U)
    ;
  vac_1 = LL_FMAC_ReadData(FMAC);
  LL_FMAC_DisableStart(FMAC);
  /*vdc*/
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_LOAD_X1,
                     NUM_TAPS, 0, 0);
  LL_FMAC_WriteData(FMAC, adc1_data[2]);
  LL_FMAC_WriteData(FMAC, adc1_data[5]);
  LL_FMAC_WriteData(FMAC, adc1_data[8]);
  LL_FMAC_WriteData(FMAC, adc1_data[11]);
  LL_FMAC_WriteData(FMAC, adc1_data[14]);
  LL_FMAC_WriteData(FMAC, adc1_data[17]);
  while (LL_FMAC_IsEnabledStart(FMAC) == 1U)
    ;
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_CONVO_FIR,
                     NUM_TAPS, 0, 0);
  while (LL_FMAC_IsActiveFlag_YEMPTY(FMAC) == 1U)
    ;
  vdc = LL_FMAC_ReadData(FMAC);
  LL_FMAC_DisableStart(FMAC);

  /*IAC2*/
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_LOAD_X1,
                     NUM_TAPS, 0, 0);
  LL_FMAC_WriteData(FMAC, adc2_data[0]);
  LL_FMAC_WriteData(FMAC, adc2_data[3]);
  LL_FMAC_WriteData(FMAC, adc2_data[6]);
  LL_FMAC_WriteData(FMAC, adc2_data[9]);
  LL_FMAC_WriteData(FMAC, adc2_data[12]);
  LL_FMAC_WriteData(FMAC, adc2_data[15]);
  while (LL_FMAC_IsEnabledStart(FMAC) == 1U)
    ;
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_CONVO_FIR,
                     NUM_TAPS, 0, 0);
  while (LL_FMAC_IsActiveFlag_YEMPTY(FMAC) == 1U)
    ;
  iac_2 = LL_FMAC_ReadData(FMAC);
  LL_FMAC_DisableStart(FMAC);
  /*IAC3*/
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_LOAD_X1,
                     NUM_TAPS, 0, 0);
  LL_FMAC_WriteData(FMAC, adc3_data[0]);
  LL_FMAC_WriteData(FMAC, adc3_data[2]);
  LL_FMAC_WriteData(FMAC, adc3_data[4]);
  LL_FMAC_WriteData(FMAC, adc3_data[6]);
  LL_FMAC_WriteData(FMAC, adc3_data[8]);
  LL_FMAC_WriteData(FMAC, adc3_data[10]);
  while (LL_FMAC_IsEnabledStart(FMAC) == 1U)
    ;
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_CONVO_FIR,
                     NUM_TAPS, 0, 0);
  while (LL_FMAC_IsActiveFlag_YEMPTY(FMAC) == 1U)
    ;
  iac_3 = LL_FMAC_ReadData(FMAC);
  LL_FMAC_DisableStart(FMAC);

  /*VAC2*/
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_LOAD_X1,
                     NUM_TAPS, 0, 0);
  LL_FMAC_WriteData(FMAC, adc2_data[1]);
  LL_FMAC_WriteData(FMAC, adc2_data[4]);
  LL_FMAC_WriteData(FMAC, adc2_data[7]);
  LL_FMAC_WriteData(FMAC, adc2_data[10]);
  LL_FMAC_WriteData(FMAC, adc2_data[13]);
  LL_FMAC_WriteData(FMAC, adc2_data[16]);
  while (LL_FMAC_IsEnabledStart(FMAC) == 1U)
    ;
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_CONVO_FIR,
                     NUM_TAPS, 0, 0);
  while (LL_FMAC_IsActiveFlag_YEMPTY(FMAC) == 1U)
    ;
  vac_2 = LL_FMAC_ReadData(FMAC);
  LL_FMAC_DisableStart(FMAC);
  /*VAC3*/
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_LOAD_X1,
                     NUM_TAPS, 0, 0);
  LL_FMAC_WriteData(FMAC, adc3_data[1]);
  LL_FMAC_WriteData(FMAC, adc3_data[3]);
  LL_FMAC_WriteData(FMAC, adc3_data[5]);
  LL_FMAC_WriteData(FMAC, adc3_data[7]);
  LL_FMAC_WriteData(FMAC, adc3_data[9]);
  LL_FMAC_WriteData(FMAC, adc3_data[11]);
  while (LL_FMAC_IsEnabledStart(FMAC) == 1U)
    ;
  LL_FMAC_ConfigFunc(FMAC, LL_FMAC_PROCESSING_START, LL_FMAC_FUNC_CONVO_FIR,
                     NUM_TAPS, 0, 0);
  while (LL_FMAC_IsActiveFlag_YEMPTY(FMAC) == 1U)
    ;
  vac_3 = LL_FMAC_ReadData(FMAC);
  LL_FMAC_DisableStart(FMAC);
}
static inline __attribute__((always_inline)) void ADC2REAL(void) {
  //   iac_1 = adc1_data[0];
  //   iac_2 = adc2_data[0];
  //   iac_3 = adc3_data[0];
  static volatile float vac_rising, ia1_dc, ia2_dc, ia3_dc;

  vac_rising = ((float)i_ac[0]);
  ia1_dc = ((float)i_ac[1]) / vac_rising; // DC VA
  ia2_dc = ((float)i_ac[2]) / vac_rising; // DC VB
  ia3_dc = ((float)i_ac[3]) / vac_rising; // DC VC

  iac_1 = ((ia1_dc * AC_CAL_12BITS_FM3)) - AC_CAL_12BITS_CONST;
  iac_2 = ((ia2_dc * AC_CAL_12BITS_FM3)) - AC_CAL_12BITS_CONST;
  iac_3 = ((ia3_dc * AC_CAL_12BITS_FM3)) - AC_CAL_12BITS_CONST;

  vac_1 = (((float)adc1_data[1] * CONSTANT_VOLTS_2AMP_VAC) - OFFSET_VAC);
  vac_2 = (((float)adc2_data[1] * CONSTANT_VOLTS_2AMP_VAC) - OFFSET_VAC);
  vac_3 = (((float)adc3_data[1] * CONSTANT_VOLTS_2AMP_VAC) - OFFSET_VAC);

  vdc = adc1_data[2];

  //   iac_1 = (iac_1 - ZERO_DAC) * IAC_GAIN;
  //   iac_2 = (iac_2 - ZERO_DAC) * IAC_GAIN;
  //   iac_3 = (iac_3 - ZERO_DAC) * IAC_GAIN;

  //   vac_1 = adc1_data[1];
  //   vac_2 = adc2_data[1];
  //   vac_3 = adc3_data[1];

  //   vac_1 = (vac_1 - ZERO_DAC) * VAC_GAIN;
  //   vac_2 = (vac_2 - ZERO_DAC) * VAC_GAIN;
  //   vac_3 = (vac_3 - ZERO_DAC) * VAC_GAIN;

  vdc = vdc * CONSTANT_VOLTS;
}
/* USER CODE END 1 */

/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file    stm32f7xx_it.c
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
#include "stm32f7xx_it.h"
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "ctrl_ez.h"
#include "dsogi_3phpll.h"
#include "stm32f767xx.h"
#include "stm32f7xx_hal.h"
#include "stm32f7xx_hal_tim.h"
#include <stdint.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN TD */

extern TIM_HandleTypeDef htim4, htim14;
extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim3;
extern ADC_HandleTypeDef hadc1;
extern ADC_HandleTypeDef hadc3;
extern TIM_HandleTypeDef htim8;
// extern ExtU_ctrl_ez_T ctrl_ez_U;
// extern ExtY_ctrl_ez_T ctrl_ez_Y;
extern uint32_t vacs[];
extern uint32_t iac_data[3], dc_data[2], vac_data[1], vac_1_data[1];
float v_ac_v = 0, ia_max = 0, ib_max = 0, idc_max = 0, vdc_max = 0,
      flt_iac_data[3], iacs[3];
float rtu_ia, rtu_ib, rtu_ic, rtu_ov_out, rtu_w, rtu_lock_pll, rtu_sine,
    rtu_cos, rtu_va, rtu_vc, rtu_vb, rty_Qb, rty_Qc, rty_Qa;

bool volatile rty_lock = false;
bool LED_CTRL = false;
bool button_state = false;
/* USER CODE END TD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
void start_my_pwm(TIM_HandleTypeDef *, uint32_t);
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define GPIO_NUMBER ((uint32_t)16U)

#define OFFSET_VOLTAGE ((int32_t)420)
#define CONSTANT_VOLTS ((float)0.232046897899365f)
#define OFFSET_CURRENT ((float)40.0f)
#define CONSTANT_VOLTS_2AMP ((float)0.0195f)
#define CONST_V_AC ((float).330494f)
#define BUTTON_ON true
#define M_VAC_CAL ((float).001176238095238095)
#define VAC_CAL_DC ((float).16666f)
#define VAC_CAL_VAC ((float)314.0f)

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
bool en_ctrl;
uint8_t ctrl_ack;
bool zeros = false;
uint8_t dbg_states;
uint8_t ctrl_state = 0U;
float comm_sp;
float set_point = -5.0f;
bool first_timer = true;
int cnt = 0;
float vdc_filter = 0.0f;
#define TIMOUT_ADC_READING 1U
bool flaggy = true;
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
void ctrl_ez_Init2(float *rty_Qa);
/* USER CODE END 0 */

/* External variables --------------------------------------------------------*/
extern DMA_HandleTypeDef hdma_adc1;
extern DMA_HandleTypeDef hdma_adc3;
extern DMA_HandleTypeDef hdma_tim8_ch1;
extern DMA_HandleTypeDef hdma_tim8_ch2;
extern DMA_HandleTypeDef hdma_tim8_ch3;
extern DMA_HandleTypeDef hdma_tim8_ch4_trig_com;
extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim5;
extern TIM_HandleTypeDef htim11;
/* USER CODE BEGIN EV */

/* USER CODE END EV */

/******************************************************************************/
/*           Cortex-M7 Processor Interruption and Exception Handlers          */
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
 * @brief This function handles Pre-fetch fault, memory access fault.
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
/* STM32F7xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32f7xx.s).                    */
/******************************************************************************/

/**
 * @brief This function handles TIM1 trigger and commutation interrupts and
 * TIM11 global interrupt.
 */
void TIM1_TRG_COM_TIM11_IRQHandler(void) {
  /* USER CODE BEGIN TIM1_TRG_COM_TIM11_IRQn 0 */
  __disable_irq();
  uint32_t volatile odr = CAL_GPIO_Port->ODR;
  CAL_GPIO_Port->BSRR = ((odr & CAL_Pin) << GPIO_NUMBER) | (~odr & CAL_Pin);
  // static volatile float dc_vacs_max = 0.0f, vac_max, vac1[401], vac2[401],
  //                          vac3[401];
  //    uint32_t volatile odr = CAL_GPIO_Port->ODR;
  //    CAL_GPIO_Port->BSRR = ((odr & CAL_Pin) <<
  //    GPIO_NUMBER) | (~odr & CAL_Pin);

  /*
  // if (cnt < 400U) {
    //   vac1[cnt] = dsogi_3phpll_Y.va_flt;
    //   vac2[cnt] = dsogi_3phpll_Y.vb_flt;
    //   vac3[cnt] = dsogi_3phpll_Y.vc_flt;
    //   cnt++;
    // }
  //   if (dc_vacs_max < dc_vacs[0]) {
  //     vac_max = ((float)dc_data[1] * CONST_V_AC) - OFFSET_VOLTAGE;
  //     dc_vacs_max = dc_vacs[0];
  //   }

     53%     -> 0.9V   ~ 0   VRMS
     0.90769 -> ?      ~ 316 VRMS
     0.16666 -> ?      ~-314 VRMS
           .90769-.16666
     m = -------------------- = 1.176238095238095e-03 = .001176238095238095
            316  + 314
            */

  /* USER CODE END TIM1_TRG_COM_TIM11_IRQn 0 */
  HAL_TIM_IRQHandler(&htim1);
  HAL_TIM_IRQHandler(&htim11);
  /* USER CODE BEGIN TIM1_TRG_COM_TIM11_IRQn 1 */
  odr = CAL_GPIO_Port->ODR;
  CAL_GPIO_Port->BSRR = ((odr & CAL_Pin) << GPIO_NUMBER) | (~odr & CAL_Pin);
  __enable_irq();
  /* USER CODE END TIM1_TRG_COM_TIM11_IRQn 1 */
}

/**
 * @brief This function handles TIM1 capture compare interrupt.
 */
void TIM1_CC_IRQHandler(void) {
  /* USER CODE BEGIN TIM1_CC_IRQn 0 */
  __disable_irq();

  // if(htim1.Instance->CR1 & TIM_CR1_DIR == 0x1)
  htim1.Instance->CCER |= (TIM_CCER_CC1NE | TIM_CCER_CC2NE | TIM_CCER_CC3NE);
  htim1.Instance->DIER &= ~(TIM_DIER_CC1IE | TIM_DIER_CC2IE | TIM_DIER_CC3IE);

  /* USER CODE END TIM1_CC_IRQn 0 */
  HAL_TIM_IRQHandler(&htim1);
  /* USER CODE BEGIN TIM1_CC_IRQn 1 */
  HAL_NVIC_SetPriority(TIM2_IRQn, 0, 0);
  HAL_NVIC_DisableIRQ(TIM1_CC_IRQn);
  __enable_irq();
  /* USER CODE END TIM1_CC_IRQn 1 */
}

/**
 * @brief This function handles TIM2 global interrupt.
 */
void TIM2_IRQHandler(void) {
  /* USER CODE BEGIN TIM2_IRQn 0 */
  htim5.Instance->CNT = 0;

  __disable_irq();
  static volatile uint32_t tim1, tim2, tim3, tim4, tim12, tim34, tim14;

  // Read ADC 1
  uint32_t volatile odr = CAL_GPIO_Port->ODR;
  CAL_GPIO_Port->BSRR = ((odr & CAL_Pin) << GPIO_NUMBER) | (~odr & CAL_Pin);
  static volatile uint32_t cnt2 = 0;
  static volatile float dc_vacs[3];
  static volatile float vac1[401], vac2[401], vac3[401], iac_1[401], iac_2[401],
      iac_3[401];
  static volatile uint32_t cnt = 0;
  if (cnt2 < 102U) {
    cnt2++;
  }
  // if (vacs[0] > 0.0f && vacs[1] > 0.0f && vacs[2] > 0.0f && vacs[3] >0.0f) {
  if (cnt2 > 100U) {
    tim1 = htim5.Instance->CNT;
    static volatile float vac_rising, v_ac_analog;
    vac_rising = ((float)vacs[0]);
    dc_vacs[0] = ((float)vacs[1]) / vac_rising; // DC VA
    dc_vacs[1] = ((float)vacs[2]) / vac_rising; // DC VB
    dc_vacs[2] = ((float)vacs[3]) / vac_rising; // DC VC
    dsogi_3phpll_U.va = ((dc_vacs[0] - VAC_CAL_DC) / M_VAC_CAL) - VAC_CAL_VAC;
    dsogi_3phpll_U.vb = ((dc_vacs[1] - VAC_CAL_DC) / M_VAC_CAL) - VAC_CAL_VAC;
    dsogi_3phpll_U.vc = ((dc_vacs[2] - VAC_CAL_DC) / M_VAC_CAL) - VAC_CAL_VAC;
    trigger_pll_fcn();
    tim2 = htim5.Instance->CNT;
    rtu_ov_out = ((float)dc_data[0] * CONSTANT_VOLTS);

    // v_ac_analog = ((float)dc_data[1] * CONST_V_AC) - OFFSET_VOLTAGE;
    rtu_va = dsogi_3phpll_U.va;
    rtu_vb = dsogi_3phpll_U.vb;
    rtu_vc = dsogi_3phpll_U.vc;
    rtu_cos = dsogi_3phpll_Y.cos_n;
    rtu_sine = dsogi_3phpll_Y.sine;
    rtu_w = dsogi_3phpll_Y.angle;
    rtu_lock_pll = dsogi_3phpll_Y.pll_lock;
    rtu_ia = (((float)iac_data[0] * CONSTANT_VOLTS_2AMP) - OFFSET_CURRENT);
    rtu_ib = (((float)iac_data[1] * CONSTANT_VOLTS_2AMP) - OFFSET_CURRENT);
    rtu_ic = (((float)iac_data[2] * CONSTANT_VOLTS_2AMP) - OFFSET_CURRENT);

    if (cnt < 400U) {
      // vac1[cnt] = v_ac_analog;
      vac2[cnt] = dc_vacs[0];
      vac3[cnt] = filter_IC;
      iac_1[cnt] = filter_IA;
      iac_2[cnt] = rtu_ib;
      iac_3[cnt] = rtu_ic;
      cnt++;
    } else {
      cnt = 401U;
    }
    /*
      if (ctrl_ez_U.vdc > vdc_max)
        vdc_max = ctrl_ez_U.vdc;
      if (ctrl_ez_U.ia > 0.0f && ctrl_ez_U.ia > ia_max)
        ia_max = ctrl_ez_U.ia;
      if (ctrl_ez_U.ib > 0.0f && ctrl_ez_U.ib > ib_max)
        ib_max = ctrl_ez_U.ib;
        */

    // Compute DC
    tim3 = htim5.Instance->CNT;
    ctrl_ez_trigger_ctrl_ez(
        (const float *)&rtu_ia, (const float *)&rtu_ib, (const float *)&rtu_ic,
        (const float *)&rtu_ov_out, (const float *)&rtu_w,
        (const float *)&rtu_lock_pll, (const float *)&rtu_sine,
        (const float *)&rtu_cos, (const float *)&rtu_va, (const float *)&rtu_vc,
        (const float *)&rtu_vb, (float *)&rty_Qa, (float *)&rty_Qb,
        (float *)&rty_Qc, (bool *)&rty_lock);
    tim4 = htim5.Instance->CNT;
    // load DC
    htim1.Instance->CCR1 = ((1.0f - rty_Qa) * (float)htim1.Instance->ARR);
    htim1.Instance->CCR2 = ((1.0f - rty_Qb) * (float)htim1.Instance->ARR);
    htim1.Instance->CCR3 = ((1.0f - rty_Qc) * (float)htim1.Instance->ARR);
    if (first_timer && !rty_lock) {
      first_timer = false;
      htim1.Instance->CCER |= (TIM_CCER_CC1E | TIM_CCER_CC2E | TIM_CCER_CC3E);
      htim1.Instance->BDTR |= TIM_BDTR_AOE;
      htim1.Instance->EGR |= TIM_EGR_UG;
      htim1.Instance->DIER |=
          (TIM_DIER_CC1IE | TIM_DIER_CC2IE | TIM_DIER_CC3IE);
      // HAL_TIM_OC_Start(&htim3, TIM_CHANNEL_1);
      htim1.Instance->CR1 |= TIM_CR1_CEN;
    }
  }
  /* USER CODE END TIM2_IRQn 0 */
  HAL_TIM_IRQHandler(&htim2);
  /* USER CODE BEGIN TIM2_IRQn 1 */
  odr = CAL_GPIO_Port->ODR;
  CAL_GPIO_Port->BSRR = ((odr & CAL_Pin) << GPIO_NUMBER) | (~odr & CAL_Pin);
  tim12 = tim2 - tim1;
  tim14 = tim4 - tim1;
  tim34 = tim4 - tim3;
  tim1 = tim2;
  __enable_irq();
  /* USER CODE END TIM2_IRQn 1 */
}

/**
 * @brief This function handles EXTI line[15:10] interrupts.
 */
void EXTI15_10_IRQHandler(void) {
  /* USER CODE BEGIN EXTI15_10_IRQn 0 */
  // htim1.Instance->CR2 |= (TIM_CR2_CCPC | TIM_CR2_CCUS);
  if (button_state == !BUTTON_ON) {
    button_state = BUTTON_ON;
    htim1.Instance->CCMR1 |= (TIM_CCMR1_OC1PE | TIM_CCMR1_OC2PE);
    htim1.Instance->CCMR2 |= TIM_CCMR2_OC3PE;
    HAL_GPIO_WritePin(GPIOB, LD2_Pin, true);
    // ctrl_ez_initialize();
    // ctrl_ez_U.setpoint = 2.0f;
    if (HAL_ADC_Start_DMA(&hadc3, iac_data, 3) == HAL_ERROR) {
      Error_Handler();
    }
    if (HAL_ADC_Start_DMA(&hadc1, dc_data, 2) == HAL_ERROR) {
      Error_Handler();
    }
    // if ( HAL_TIM_IC_Start_DMA(&htim4,TIM_CHANNEL_1,vac_data,VAC_LENGTH)
    // == HAL_ERROR )
    // {
    //   //Error_Handler();
    // }
    // if (HAL_TIM_IC_Start_DMA(&htim4,TIM_CHANNEL_2,vac_1_data,VAC_LENGTH)
    // == HAL_ERROR )
    // {
    //   //Error_Handler();
    // }

    __disable_irq();
    HAL_TIM_Base_Start_IT(&htim2);
    HAL_TIM_IC_Start_DMA(&htim8, TIM_CHANNEL_1, &vacs[0], 1U);
    HAL_TIM_IC_Start_DMA(&htim8, TIM_CHANNEL_2, &vacs[1], 1U);
    HAL_TIM_IC_Start_DMA(&htim8, TIM_CHANNEL_3, &vacs[2], 1U);
    HAL_TIM_IC_Start_DMA(&htim8, TIM_CHANNEL_4, &vacs[3], 1U);
    HAL_TIM_Base_Start(&htim5);
    dsogi_3phpll_initialize();
    // ctrl_ez_initialize();

    ctrl_ez_Init(&rty_Qa);

    __enable_irq();
  }
  /* USER CODE END EXTI15_10_IRQn 0 */
  HAL_GPIO_EXTI_IRQHandler(USER_Btn_Pin);
  /* USER CODE BEGIN EXTI15_10_IRQn 1 */

  /* USER CODE END EXTI15_10_IRQn 1 */
}

/**
 * @brief This function handles TIM5 global interrupt.
 */
void TIM5_IRQHandler(void) {
  /* USER CODE BEGIN TIM5_IRQn 0 */

  /* USER CODE END TIM5_IRQn 0 */
  HAL_TIM_IRQHandler(&htim5);
  /* USER CODE BEGIN TIM5_IRQn 1 */

  /* USER CODE END TIM5_IRQn 1 */
}

/**
 * @brief This function handles DMA2 stream0 global interrupt.
 */
void DMA2_Stream0_IRQHandler(void) {
  /* USER CODE BEGIN DMA2_Stream0_IRQn 0 */

  /* USER CODE END DMA2_Stream0_IRQn 0 */
  HAL_DMA_IRQHandler(&hdma_adc1);
  /* USER CODE BEGIN DMA2_Stream0_IRQn 1 */

  /* USER CODE END DMA2_Stream0_IRQn 1 */
}

/**
 * @brief This function handles DMA2 stream1 global interrupt.
 */
void DMA2_Stream1_IRQHandler(void) {
  /* USER CODE BEGIN DMA2_Stream1_IRQn 0 */

  /* USER CODE END DMA2_Stream1_IRQn 0 */
  HAL_DMA_IRQHandler(&hdma_adc3);
  /* USER CODE BEGIN DMA2_Stream1_IRQn 1 */

  /* USER CODE END DMA2_Stream1_IRQn 1 */
}

/**
 * @brief This function handles DMA2 stream2 global interrupt.
 */
void DMA2_Stream2_IRQHandler(void) {
  /* USER CODE BEGIN DMA2_Stream2_IRQn 0 */

  /* USER CODE END DMA2_Stream2_IRQn 0 */
  HAL_DMA_IRQHandler(&hdma_tim8_ch1);
  /* USER CODE BEGIN DMA2_Stream2_IRQn 1 */

  /* USER CODE END DMA2_Stream2_IRQn 1 */
}

/**
 * @brief This function handles DMA2 stream3 global interrupt.
 */
void DMA2_Stream3_IRQHandler(void) {
  /* USER CODE BEGIN DMA2_Stream3_IRQn 0 */

  /* USER CODE END DMA2_Stream3_IRQn 0 */
  HAL_DMA_IRQHandler(&hdma_tim8_ch2);
  /* USER CODE BEGIN DMA2_Stream3_IRQn 1 */

  /* USER CODE END DMA2_Stream3_IRQn 1 */
}

/**
 * @brief This function handles DMA2 stream4 global interrupt.
 */
void DMA2_Stream4_IRQHandler(void) {
  /* USER CODE BEGIN DMA2_Stream4_IRQn 0 */

  /* USER CODE END DMA2_Stream4_IRQn 0 */
  HAL_DMA_IRQHandler(&hdma_tim8_ch3);
  /* USER CODE BEGIN DMA2_Stream4_IRQn 1 */

  /* USER CODE END DMA2_Stream4_IRQn 1 */
}

/**
 * @brief This function handles DMA2 stream7 global interrupt.
 */
void DMA2_Stream7_IRQHandler(void) {
  /* USER CODE BEGIN DMA2_Stream7_IRQn 0 */

  /* USER CODE END DMA2_Stream7_IRQn 0 */
  HAL_DMA_IRQHandler(&hdma_tim8_ch4_trig_com);
  /* USER CODE BEGIN DMA2_Stream7_IRQn 1 */

  /* USER CODE END DMA2_Stream7_IRQn 1 */
}

/* USER CODE BEGIN 1 */

/*
  // Read ADC 1

  ctrl_ez_U.setpoint = -5.0f;

  float volts    =  dc_data[0] * 3.3f/4096.0f;
  ctrl_ez_U.vdc  =  (volts*256.0f/2.048f);

  volts =  dc_data[1] * 3.3f/4096.0f;
  ctrl_ez_U.v_ac  = (volts*256.0f/2.048f);

  volts =  iac_data[0] * 3.3f/4096.0f;
  ctrl_ez_U.ia = (volts*256.0f/2.048f);

  volts =  iac_data[1] * 3.3f/4096.0f;
  ctrl_ez_U.ib = (volts*256.0f/2.048f);

  if (ctrl_ez_U.vdc > vdc_max)
    vdc_max = ctrl_ez_U.vdc;
  if (ctrl_ez_U.ia > 0.0f && ctrl_ez_U.ia > ia_max)
    ia_max =  ctrl_ez_U.ia;
  if (ctrl_ez_U.ib > 0.0f && ctrl_ez_U.ib > ib_max)
    ib_max =  ctrl_ez_U.ib;
  //Compute DC
  trigger_ctrl_ez();
  //load DC



  // htim1.Instance->CCR1 = ((ctrl_ez_Y.Qa) * (float)htim1.Instance->ARR);
  // htim1.Instance->CCR2 = ((ctrl_ez_Y.Qb) * (float)htim1.Instance->ARR);
  // htim1.Instance->CCR3 = ((ctrl_ez_Y.Qc) * (float)htim1.Instance->ARR);

  htim1.Instance->CCR1 = (float)(htim1.Instance->ARR) * (1.0f-.35f);
  htim1.Instance->CCR2 = (float)(htim1.Instance->ARR) * (1.0f-.35f);
  htim1.Instance->CCR3 = (float)(htim1.Instance->ARR) * (1.0f-.35f);
  if (!first_timer && flaggy)
  {

    flaggy = false;
  }
  if(first_timer && !ctrl_ez_Y.lock)
  {
    first_timer = false;

    htim1.Instance->CR1 &= ~TIM_CR1_CEN;
    htim1.Instance->EGR |= TIM_EGR_UG; //update gen
    htim1.Instance->CNT = 0x0;
    // HAL_TIM_PWM_Start(&htim1,TIM_CHANNEL_1);
    // HAL_TIMEx_PWMN_Start(&htim1, TIM_CHANNEL_1);
    // HAL_TIM_PWM_Start(&htim1,TIM_CHANNEL_2);
    // HAL_TIMEx_PWMN_Start(&htim1, TIM_CHANNEL_2);
    // HAL_TIM_PWM_Start(&htim1,TIM_CHANNEL_3);
    // HAL_TIMEx_PWMN_Start(&htim1, TIM_CHANNEL_3);
    //start_my_pwm(&htim1,TIM_CHANNEL_1);
    //start_my_pwm(&htim1,TIM_CHANNEL_2);
    //start_my_pwm(&htim1,TIM_CHANNEL_3);

    htim1.Instance->CCER |= 0x555; //enables OCxE & OCNxE

    //htim1.Instance->BDTR |= (TIM_BDTR_MOE);



    htim1.Instance->BDTR |=(TIM_BDTR_AOE);
  //htim1.Instance->EGR  |= TIM_EGR_COMG;
  htim1.Instance->CR1  |= TIM_CR1_CEN;
  HAL_TIM_OC_Start(&htim2,TIM_CHANNEL_1);
}

*/
/* USER CODE END 1 */

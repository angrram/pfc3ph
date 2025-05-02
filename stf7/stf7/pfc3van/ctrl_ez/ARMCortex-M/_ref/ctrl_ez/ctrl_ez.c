/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: ctrl_ez.c
 *
 * Code generated for Simulink model 'ctrl_ez'.
 *
 * Model version                  : 1.631
 * Simulink Coder version         : 24.2 (R2024b) 21-Jun-2024
 * C/C++ source code generated on : Thu May  1 14:19:19 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex-M
 * Code generation objective: Execution efficiency
 * Validation result: Not run
 */

#include "ctrl_ez.h"
#include <stdbool.h>
#include "ctrl_ez_private.h"
#include <math.h>
#include <stdint.h>
#include "plook_u32ff_evenc.h"
#include "intrp1d_fu32fl.h"

/* Exported block states */
float filter_IA;                       /* 'Data Store Memory' (':2047') */
float filter_IB;                       /* 'Data Store Memory1' (':2049') */
float filter_IC;                       /* 'Data Store Memory2' (':2051') */

/* Block states (default storage) */
DW_ctrl_ez_f_T ctrl_ez_DW;

/* System initialize for referenced model: 'ctrl_ez' */
void ctrl_ez_Init(float *rty_Qa)
{
  /* SystemInitialize for RootInportFunctionCallGenerator generated from: 'trigger_ctrl_ez' (':21') incorporates:
   *  SubSystem: 'ctrl_ez_fcn' (':498')
   */
  /* InitializeConditions for Memory: 'Memory' (':561') */
  ctrl_ez_DW.Memory_PreviousInput = true;

  /* SystemInitialize for Enabled SubSystem: 'ctrl' (':1270') */
  /* InitializeConditions for DiscreteIntegrator: 'Accumulator' (':1396') */
  ctrl_ez_DW.Accumulator_PrevResetState = 2;

  /* End of SystemInitialize for SubSystem: 'ctrl' (':1270') */

  /* SystemInitialize for SignalConversion generated from: 'Qa' (':570') */
  *rty_Qa = ctrl_ez_DW.T2[0];

  /* End of SystemInitialize for RootInportFunctionCallGenerator generated from: 'trigger_ctrl_ez' (':21') */
}

/* Output and update for referenced model: 'ctrl_ez' */
void ctrl_ez_trigger_ctrl_ez(const float *rtu_ia, const float *rtu_ib, const
  float *rtu_ic, const float *rtu_ov_out, const float *rtu_w, const float
  *rtu_lock_pll, const float *rtu_sine, const float *rtu_cos, const float
  *rtu_va, const float *rtu_vc, const float *rtu_vb, float *rty_Qa, float
  *rty_Qb, float *rty_Qc, bool *rty_lock)
{
  float rtb_Add1_idx_0;
  float rtb_Add1_idx_1;
  float rtb_Add1_idx_2;
  float rtb_Gain;
  float rtb_Kalphabeta0_d_idx_0;
  float rtb_Kalphabeta0_d_idx_1;
  float rtb_Kalphabeta0_idx_0;
  float rtb_Sin;
  float rtb_Switch1_idx_0;
  float rtb_Switch1_idx_1;
  float rtb_vd_ctrl;
  float rtb_vd_park_l;
  float rtb_vq_park_o;
  int32_t rtb_Accumulator_o2;
  uint32_t bpIdx;
  uint8_t quadrantInfo;
  bool isReciprocal;
  static const float tableData_c[16] = { 0.0F, 0.010594652F, 0.0210962314F,
    0.0314164795F, 0.0414761603F, 0.0512081906F, 0.0605594702F, 0.0694913715F,
    0.0779791325F, 0.0860104337F, 0.0935835242F, 0.100705102F, 0.107388355F,
    0.113651067F, 0.11951407F, 0.125F };

  /* RootInportFunctionCallGenerator generated from: 'trigger_ctrl_ez' (':21') incorporates:
   *  SubSystem: 'ctrl_ez_fcn' (':498')
   */
  /* Sum: 'Add1' (':831:360') incorporates:
   *  Product: 'Product' (':831:364')
   *  Product: 'Product1' (':831:365')
   *  UnitDelay: 'Unit Delay' (':831:366')
   */
  rtb_Add1_idx_0 = *rtu_ia * 0.1F + ctrl_ez_DW.UnitDelay_DSTATE[0] * 0.9F;
  rtb_Add1_idx_1 = *rtu_ib * 0.1F + 0.9F * ctrl_ez_DW.UnitDelay_DSTATE[1];
  rtb_Add1_idx_2 = *rtu_ic * 0.1F + 0.9F * ctrl_ez_DW.UnitDelay_DSTATE[2];

  /* DataStoreWrite: 'Data Store Write' (':2046') */
  filter_IA = rtb_Add1_idx_0;

  /* DataStoreWrite: 'Data Store Write1' (':2048') */
  filter_IB = rtb_Add1_idx_1;

  /* DataStoreWrite: 'Data Store Write2' (':2050') */
  filter_IC = rtb_Add1_idx_2;

  /* Switch: 'Switch' (':562') incorporates:
   *  Constant: 'Pi1' (':1837')
   *  Logic: 'AND' (':1985')
   *  Memory: 'Memory' (':561')
   *  RelationalOperator: 'Equal' (':1807')
   */
  *rty_lock = (((*rtu_w <= 0.0F) || (*rtu_lock_pll == 0.0F)) &&
               ctrl_ez_DW.Memory_PreviousInput);

  /* Gain: 'Kalphabeta0' (':2058:641') incorporates:
   *  Gain: 'one_by_3' (':2058:648')
   *  Gain: 'one_by_sqrt3_' (':2058:649')
   *  Sum: 'Sum' (':2058:644')
   *  Sum: 'Sum1' (':2058:645')
   *  Sum: 'Sum2' (':2058:646')
   */
  rtb_Kalphabeta0_idx_0 = (*rtu_va - ((*rtu_va + *rtu_vb) + *rtu_vc) *
    0.333333343F) * 1.22474492F;
  rtb_Switch1_idx_0 = (*rtu_vb - *rtu_vc) * 0.577350259F * 1.22474492F;

  /* Outputs for Enabled SubSystem: 'ctrl' (':1270') incorporates:
   *  EnablePort: 'Enable' (':1272')
   */
  /* Logic: 'NOT' (':591') */
  if (!*rty_lock) {
    /* Gain: 'Kalphabeta0' (':1278:641') incorporates:
     *  Gain: 'one_by_3' (':1278:648')
     *  Gain: 'one_by_sqrt3_' (':1278:649')
     *  Sum: 'Sum' (':1278:644')
     *  Sum: 'Sum1' (':1278:645')
     *  Sum: 'Sum2' (':1278:646')
     */
    rtb_Kalphabeta0_d_idx_0 = (rtb_Add1_idx_0 - ((rtb_Add1_idx_0 +
      rtb_Add1_idx_1) + rtb_Add1_idx_2) * 0.333333343F) * 1.22474492F;
    rtb_Kalphabeta0_d_idx_1 = (rtb_Add1_idx_1 - rtb_Add1_idx_2) * 0.577350259F *
      1.22474492F;

    /* MATLAB Function: 'park_tf' (':2017') */
    rtb_vq_park_o = *rtu_sine * rtb_Kalphabeta0_d_idx_1 + *rtu_cos *
      rtb_Kalphabeta0_d_idx_0;
    rtb_vd_park_l = *rtu_sine * rtb_Kalphabeta0_d_idx_0 - *rtu_cos *
      rtb_Kalphabeta0_d_idx_1;

    /* DiscreteIntegrator: 'Accumulator' (':1374') */
    if (ctrl_ez_DW.Accumulator_DSTATE == 50.0F) {
      rtb_Accumulator_o2 = 1;
    } else if (ctrl_ez_DW.Accumulator_DSTATE == -50.0F) {
      rtb_Accumulator_o2 = -1;
    } else {
      rtb_Accumulator_o2 = 0;
    }

    /* DiscreteIntegrator: 'Accumulator' (':1385') */
    rtb_Kalphabeta0_d_idx_0 = ctrl_ez_DW.Accumulator_DSTATE_a;

    /* DiscreteIntegrator: 'Accumulator' (':1385') */
    if (ctrl_ez_DW.Accumulator_DSTATE_a > 100.0F) {
      /* DiscreteIntegrator: 'Accumulator' (':1385') */
      rtb_Kalphabeta0_d_idx_0 = 100.0F;
    } else if (ctrl_ez_DW.Accumulator_DSTATE_a < -100.0F) {
      /* DiscreteIntegrator: 'Accumulator' (':1385') */
      rtb_Kalphabeta0_d_idx_0 = -100.0F;
    }

    /* Sum: 'Sum3' (':1332') incorporates:
     *  Constant: 'Constant' (':1324')
     *  DiscreteIntegrator: 'Accumulator' (':1374')
     *  Gain: 'Gain1' (':1389')
     *  Gain: 'Gain1' (':1378')
     *  Gain: 'Gain' (':1333')
     *  MATLAB Function: 'park_tf' (':2016')
     *  Sum: 'Add2' (':1386')
     *  Sum: 'Add2' (':1375')
     *  Sum: 'Sum1' (':1323')
     *  Sum: 'Sum2' (':1328')
     */
    rtb_vd_ctrl = ((*rtu_sine * rtb_Kalphabeta0_idx_0 - *rtu_cos *
                    rtb_Switch1_idx_0) + 0.0471238904F * rtb_vq_park_o) -
      ((((700.0F - *rtu_ov_out) * 0.3F + ctrl_ez_DW.Accumulator_DSTATE) -
        rtb_vd_park_l) * 8.0F + rtb_Kalphabeta0_d_idx_0);

    /* Sum: 'Sum4' (':1336') incorporates:
     *  Constant: 'Constant1' (':1337')
     */
    rtb_Sin = 0.0F - rtb_vq_park_o;

    /* Delay: 'Delay1' (':1399') */
    rtb_vq_park_o = ctrl_ez_DW.Delay1_DSTATE;

    /* DiscreteIntegrator: 'Accumulator' (':1396') incorporates:
     *  Delay: 'Delay1' (':1399')
     */
    if ((ctrl_ez_DW.Delay1_DSTATE > 0.0F) &&
        (ctrl_ez_DW.Accumulator_PrevResetState <= 0)) {
      ctrl_ez_DW.Accumulator_DSTATE_p = 0.0F;
    }

    /* DiscreteIntegrator: 'Accumulator' (':1396') */
    rtb_Kalphabeta0_d_idx_1 = ctrl_ez_DW.Accumulator_DSTATE_p;

    /* DiscreteIntegrator: 'Accumulator' (':1396') */
    if (ctrl_ez_DW.Accumulator_DSTATE_p > 500.0F) {
      /* DiscreteIntegrator: 'Accumulator' (':1396') */
      rtb_Kalphabeta0_d_idx_1 = 500.0F;
    } else if (ctrl_ez_DW.Accumulator_DSTATE_p < -500.0F) {
      /* DiscreteIntegrator: 'Accumulator' (':1396') */
      rtb_Kalphabeta0_d_idx_1 = -500.0F;
    }

    /* Sum: 'Sum5' (':1341') incorporates:
     *  Gain: 'Gain1' (':1400')
     *  Gain: 'Gain1' (':1342')
     *  MATLAB Function: 'park_tf' (':2016')
     *  Sum: 'Add2' (':1397')
     */
    rtb_vd_park_l = ((*rtu_sine * rtb_Switch1_idx_0 + *rtu_cos *
                      rtb_Kalphabeta0_idx_0) - 0.0471238904F * rtb_vd_park_l) -
      (8.0F * rtb_Sin + rtb_Kalphabeta0_d_idx_1);

    /* Outputs for Atomic SubSystem: 'Two inputs CRL' (':2068:778') */
    /* Switch: 'Switch' (':2068:755') incorporates:
     *  Product: 'dcos' (':2068:431')
     *  Product: 'dsin' (':2068:435')
     *  Product: 'qcos' (':2068:434')
     *  Product: 'qsin' (':2068:433')
     *  Sum: 'sum_alpha' (':2068:432')
     *  Sum: 'sum_beta' (':2068:436')
     *  UnaryMinus: 'Unary_Minus' (':2068:756')
     */
    rtb_Switch1_idx_0 = rtb_vd_park_l * *rtu_cos + rtb_vd_ctrl * *rtu_sine;
    rtb_Switch1_idx_1 = -(rtb_vd_ctrl * *rtu_cos - rtb_vd_park_l * *rtu_sine);

    /* Outputs for Atomic SubSystem: 'atan2' (':2028') */
    /* Trigonometry: 'Atan2' (':2028:325') incorporates:
     *  AlgorithmDescriptorDelegate generated from: 'a16' (':2068:761')
     */
    if ((rtb_Switch1_idx_0 == 0.0F) && (rtb_Switch1_idx_1 == 0.0F)) {
      rtb_Gain = 0.0F;
    } else {
      isReciprocal = false;
      if (rtb_Switch1_idx_1 < 0.0F) {
        if (rtb_Switch1_idx_0 < 0.0F) {
          quadrantInfo = 3U;
        } else {
          quadrantInfo = 4U;
        }
      } else if (rtb_Switch1_idx_0 < 0.0F) {
        quadrantInfo = 2U;
      } else {
        quadrantInfo = 1U;
      }

      rtb_Kalphabeta0_idx_0 = (float)fabs(rtb_Switch1_idx_0);
      rtb_Gain = (float)fabs(rtb_Switch1_idx_1);
      if (rtb_Gain > rtb_Kalphabeta0_idx_0) {
        rtb_Sin = rtb_Gain;
        rtb_Gain = rtb_Kalphabeta0_idx_0;
        isReciprocal = true;
      } else {
        rtb_Sin = rtb_Kalphabeta0_idx_0;
      }

      bpIdx = plook_u32ff_evenc(rtb_Gain / rtb_Sin, 0.0F, 0.0666666701F, 15U,
        &rtb_Kalphabeta0_idx_0);
      rtb_Gain = intrp1d_fu32fl(bpIdx, rtb_Kalphabeta0_idx_0, tableData_c);
      if (isReciprocal) {
        rtb_Gain = 0.25F - rtb_Gain;
      }

      if (quadrantInfo == 2) {
        rtb_Gain = 0.5F - rtb_Gain;
      } else if (quadrantInfo == 3) {
        rtb_Gain -= 0.5F;
      } else if (quadrantInfo == 4) {
        rtb_Gain = -rtb_Gain;
      }
    }

    /* End of Outputs for SubSystem: 'Two inputs CRL' (':2068:778') */
    rtb_Gain *= 6.28318548F;

    /* End of Trigonometry: 'Atan2' (':2028:325') */

    /* MATLAB Function: 'mod_fcn' (':2052') incorporates:
     *  AlgorithmDescriptorDelegate generated from: 'a16' (':2028:305')
     */
    if (rtb_Gain == 0.0F) {
      rtb_vd_park_l = 0.0F;
    } else {
      rtb_vd_park_l = (float)fmod(rtb_Gain, 6.2831854820251465);
      isReciprocal = (rtb_vd_park_l == 0.0F);
      if (!isReciprocal) {
        rtb_Gain = (float)fabs(rtb_Gain / 6.28318548F);
        isReciprocal = ((float)fabs(rtb_Gain - (float)floor(rtb_Gain + 0.5F)) <=
                        1.1920929E-7F * rtb_Gain);
      }

      if (isReciprocal) {
        rtb_vd_park_l = 0.0F;
      } else if (rtb_vd_park_l < 0.0F) {
        rtb_vd_park_l += 6.28318548F;
      }
    }

    /* End of MATLAB Function: 'mod_fcn' (':2052') */
    /* End of Outputs for SubSystem: 'atan2' (':2028') */

    /* MATLAB Function: 'sector_selection' (':1809') */
    if ((rtb_vd_park_l >= 0.0F) && (rtb_vd_park_l < 1.04719758F)) {
      ctrl_ez_DW.y = 0;
      isReciprocal = true;
    } else if ((rtb_vd_park_l >= 1.04719758F) && (rtb_vd_park_l < 2.09439516F))
    {
      ctrl_ez_DW.y = 1;
      isReciprocal = false;
    } else if ((rtb_vd_park_l >= 2.09439516F) && (rtb_vd_park_l < 3.14159274F))
    {
      ctrl_ez_DW.y = 2;
      isReciprocal = true;
    } else if ((rtb_vd_park_l >= 3.14159274F) && (rtb_vd_park_l < 4.18879032F))
    {
      ctrl_ez_DW.y = 3;
      isReciprocal = false;
    } else if ((rtb_vd_park_l >= 4.18879032F) && (rtb_vd_park_l < 5.23598766F))
    {
      ctrl_ez_DW.y = 4;
      isReciprocal = true;
    } else if ((rtb_vd_park_l >= 5.23598766F) && (rtb_vd_park_l < 6.28318548F))
    {
      ctrl_ez_DW.y = 5;
      isReciprocal = false;
    } else {
      ctrl_ez_DW.y = 1;
      isReciprocal = false;
    }

    rtb_vd_ctrl = rtb_vd_park_l - (float)ctrl_ez_DW.y * 1.04719758F;

    /* Outputs for Atomic SubSystem: 'Two inputs CRL' (':2068:778') */
    /* Sqrt: 'Sqrt' (':2027') incorporates:
     *  AlgorithmDescriptorDelegate generated from: 'a16' (':2068:761')
     *  Product: 'Product' (':2024')
     *  Product: 'Product1' (':2025')
     *  Sum: 'Add' (':2026')
     */
    rtb_Sin = (float)sqrt(rtb_Switch1_idx_0 * rtb_Switch1_idx_0 +
                          rtb_Switch1_idx_1 * rtb_Switch1_idx_1);

    /* End of Outputs for SubSystem: 'Two inputs CRL' (':2068:778') */

    /* Sum: 'Add1' (':1981:360') incorporates:
     *  Product: 'Product' (':1981:364')
     *  Product: 'Product1' (':1981:365')
     *  UnitDelay: 'Unit Delay' (':1981:366')
     */
    rtb_vd_park_l = *rtu_ov_out * 0.01F + 0.99F * ctrl_ez_DW.UnitDelay_DSTATE_f;

    /* Saturate: 'Saturation3' (':1853') */
    if (rtb_vd_park_l > 2000.0F) {
      rtb_Gain = 2000.0F;
    } else if (rtb_vd_park_l < 100.0F) {
      rtb_Gain = 100.0F;
    } else {
      rtb_Gain = rtb_vd_park_l;
    }

    /* End of Saturate: 'Saturation3' (':1853') */

    /* Product: 'Divide1' (':1795') incorporates:
     *  Constant: 'Constant' (':1789')
     *  Constant: 'Constant1' (':1792')
     *  Sum: 'Add1' (':1790')
     *  Trigonometry: 'Sin' (':2063')
     */
    rtb_Switch1_idx_0 = (float)sin(1.04719758F - rtb_vd_ctrl) * rtb_Sin *
      1.73205078F / rtb_Gain;

    /* Saturate: 'Saturation' (':1823') */
    if (rtb_Switch1_idx_0 > 1.0F) {
      rtb_Switch1_idx_0 = 1.0F;
    } else if (rtb_Switch1_idx_0 < 0.0F) {
      rtb_Switch1_idx_0 = 0.0F;
    }

    /* Product: 'Divide1' (':1795') incorporates:
     *  Constant: 'Constant1' (':1792')
     *  Trigonometry: 'Sin1' (':2064')
     */
    rtb_Switch1_idx_1 = (float)sin(rtb_vd_ctrl) * rtb_Sin * 1.73205078F /
      rtb_Gain;

    /* Saturate: 'Saturation' (':1823') */
    if (rtb_Switch1_idx_1 > 1.0F) {
      rtb_Switch1_idx_1 = 1.0F;
    } else if (rtb_Switch1_idx_1 < 0.0F) {
      rtb_Switch1_idx_1 = 0.0F;
    }

    /* Sum: 'Sum of Elements' (':1941') */
    rtb_Sin = rtb_Switch1_idx_0 + rtb_Switch1_idx_1;

    /* Switch: 'Switch' (':1877') */
    if (isReciprocal) {
      rtb_Kalphabeta0_idx_0 = rtb_Switch1_idx_0;
      rtb_Switch1_idx_0 = rtb_Switch1_idx_1;
    } else {
      rtb_Kalphabeta0_idx_0 = rtb_Switch1_idx_1;
    }

    /* End of Switch: 'Switch' (':1877') */

    /* Saturate: 'Saturation2' (':1825') incorporates:
     *  Constant: 'Constant2' (':1797')
     *  Sum: 'Add2' (':1799')
     */
    if (1.0F - rtb_Sin < 0.0F) {
      rtb_Gain = 0.0F;
    } else {
      rtb_Gain = 1.0F - rtb_Sin;
    }

    /* Gain: 'Gain' (':1802') incorporates:
     *  Saturate: 'Saturation2' (':1825')
     */
    rtb_Gain *= 0.5F;

    /* Sum: 'Add3' (':1803') */
    rtb_Sin = rtb_Switch1_idx_0 + rtb_Gain;

    /* Saturate: 'Saturation4' (':1872') */
    if (rtb_Sin > 1.0F) {
      rtb_Sin = 1.0F;
    }

    /* End of Saturate: 'Saturation4' (':1872') */

    /* LookupNDDirect: 'Direct Lookup Table (n-D)' (':1813') incorporates:
     *  MATLAB Function: 'sector_selection' (':1809')
     *
     * About 'Direct Lookup Table (n-D)' (':1813'):
     *  2-dimensional Direct Look-Up returning a Column,
     *  which is contiguous for column-major array
     *     Remove protection against out-of-range input in generated code: 'on'
     *   */
    ctrl_ez_DW.y *= 3;

    /* Sum: 'Add4' (':1804') */
    rtb_Switch1_idx_0 = rtb_Kalphabeta0_idx_0 + rtb_Sin;

    /* SignalConversion generated from: 'Selector' (':1810') */
    ctrl_ez_DW.rtb_Gain_m[0] = rtb_Gain;
    ctrl_ez_DW.rtb_Gain_m[1] = rtb_Sin;

    /* Saturate: 'Saturation5' (':1873') */
    if (rtb_Switch1_idx_0 > 1.0F) {
      /* SignalConversion generated from: 'Selector' (':1810') */
      ctrl_ez_DW.rtb_Gain_m[2] = 1.0F;
    } else {
      /* SignalConversion generated from: 'Selector' (':1810') */
      ctrl_ez_DW.rtb_Gain_m[2] = rtb_Switch1_idx_0;
    }

    /* End of Saturate: 'Saturation5' (':1873') */

    /* Saturate: 'Saturation1' (':1937') incorporates:
     *  LookupNDDirect: 'Direct Lookup Table (n-D)' (':1813')
     *  Selector: 'Selector' (':1810')
     *
     * About 'Direct Lookup Table (n-D)' (':1813'):
     *  2-dimensional Direct Look-Up returning a Column,
     *  which is contiguous for column-major array
     *     Remove protection against out-of-range input in generated code: 'on'
     *   */
    rtb_Switch1_idx_0 = ctrl_ez_DW.rtb_Gain_m[(int32_t)
      rtCP_DirectLookupTablenD_table[ctrl_ez_DW.y] - 1];
    if (rtb_Switch1_idx_0 > 0.97F) {
      /* Saturate: 'Saturation1' (':1937') */
      ctrl_ez_DW.T2[0] = 0.97F;
    } else if (rtb_Switch1_idx_0 < 0.03F) {
      /* Saturate: 'Saturation1' (':1937') */
      ctrl_ez_DW.T2[0] = 0.03F;
    } else {
      /* Saturate: 'Saturation1' (':1937') */
      ctrl_ez_DW.T2[0] = rtb_Switch1_idx_0;
    }

    rtb_Switch1_idx_0 = ctrl_ez_DW.rtb_Gain_m[(int32_t)
      rtCP_DirectLookupTablenD_table[ctrl_ez_DW.y + 1] - 1];
    if (rtb_Switch1_idx_0 > 0.97F) {
      /* Saturate: 'Saturation1' (':1937') */
      ctrl_ez_DW.T2[1] = 0.97F;
    } else if (rtb_Switch1_idx_0 < 0.03F) {
      /* Saturate: 'Saturation1' (':1937') */
      ctrl_ez_DW.T2[1] = 0.03F;
    } else {
      /* Saturate: 'Saturation1' (':1937') */
      ctrl_ez_DW.T2[1] = rtb_Switch1_idx_0;
    }

    rtb_Switch1_idx_0 = ctrl_ez_DW.rtb_Gain_m[(int32_t)
      rtCP_DirectLookupTablenD_table[ctrl_ez_DW.y + 2] - 1];
    if (rtb_Switch1_idx_0 > 0.97F) {
      /* Saturate: 'Saturation1' (':1937') */
      ctrl_ez_DW.T2[2] = 0.97F;
    } else if (rtb_Switch1_idx_0 < 0.03F) {
      /* Saturate: 'Saturation1' (':1937') */
      ctrl_ez_DW.T2[2] = 0.03F;
    } else {
      /* Saturate: 'Saturation1' (':1937') */
      ctrl_ez_DW.T2[2] = rtb_Switch1_idx_0;
    }

    /* End of Saturate: 'Saturation1' (':1937') */

    /* SignalConversion generated from: 'Qb' (':1369') */
    *rty_Qb = ctrl_ez_DW.T2[1];

    /* SignalConversion generated from: 'Qc' (':1370') */
    *rty_Qc = ctrl_ez_DW.T2[2];

    /* Update for DiscreteIntegrator: 'Accumulator' (':1374') */
    if (ctrl_ez_DW.Accumulator_DSTATE > 50.0F) {
      ctrl_ez_DW.Accumulator_DSTATE = 50.0F;
    } else if (ctrl_ez_DW.Accumulator_DSTATE < -50.0F) {
      ctrl_ez_DW.Accumulator_DSTATE = -50.0F;
    }

    /* End of Update for DiscreteIntegrator: 'Accumulator' (':1374') */

    /* Update for Delay: 'Delay' (':1933') */
    ctrl_ez_DW.Delay_DSTATE[0] = ctrl_ez_DW.Delay_DSTATE[1];

    /* DiscreteIntegrator: 'Accumulator' (':1385') */
    if (rtb_Kalphabeta0_d_idx_0 == 100.0F) {
      /* Update for Delay: 'Delay' (':1933') */
      ctrl_ez_DW.Delay_DSTATE[1] = 1.0F;
    } else if (rtb_Kalphabeta0_d_idx_0 == -100.0F) {
      /* Update for Delay: 'Delay' (':1933') */
      ctrl_ez_DW.Delay_DSTATE[1] = -1.0F;
    } else {
      /* Update for Delay: 'Delay' (':1933') */
      ctrl_ez_DW.Delay_DSTATE[1] = 0.0F;
    }

    /* Update for DiscreteIntegrator: 'Accumulator' (':1385') */
    ctrl_ez_DW.Accumulator_DSTATE_a = rtb_Kalphabeta0_d_idx_0;

    /* DiscreteIntegrator: 'Accumulator' (':1396') */
    if (rtb_Kalphabeta0_d_idx_1 == 500.0F) {
      /* Update for Delay: 'Delay1' (':1399') */
      ctrl_ez_DW.Delay1_DSTATE = 1.0F;
    } else if (rtb_Kalphabeta0_d_idx_1 == -500.0F) {
      /* Update for Delay: 'Delay1' (':1399') */
      ctrl_ez_DW.Delay1_DSTATE = -1.0F;
    } else {
      /* Update for Delay: 'Delay1' (':1399') */
      ctrl_ez_DW.Delay1_DSTATE = 0.0F;
    }

    /* Update for DiscreteIntegrator: 'Accumulator' (':1396') */
    ctrl_ez_DW.Accumulator_DSTATE_p = rtb_Kalphabeta0_d_idx_1;
    if (rtb_vq_park_o > 0.0F) {
      ctrl_ez_DW.Accumulator_PrevResetState = 1;
    } else if (rtb_vq_park_o < 0.0F) {
      ctrl_ez_DW.Accumulator_PrevResetState = -1;
    } else if (rtb_vq_park_o == 0.0F) {
      ctrl_ez_DW.Accumulator_PrevResetState = 0;
    } else {
      ctrl_ez_DW.Accumulator_PrevResetState = 2;
    }

    /* End of Update for DiscreteIntegrator: 'Accumulator' (':1396') */

    /* Update for UnitDelay: 'Unit Delay' (':1981:366') */
    ctrl_ez_DW.UnitDelay_DSTATE_f = rtb_vd_park_l;

    /* Update for Delay: 'Delay1' (':1377') */
    ctrl_ez_DW.Delay1_DSTATE_e = (float)rtb_Accumulator_o2;
  }

  /* End of Logic: 'NOT' (':591') */
  /* End of Outputs for SubSystem: 'ctrl' (':1270') */

  /* SignalConversion generated from: 'Qa' (':570') */
  *rty_Qa = ctrl_ez_DW.T2[0];

  /* Update for UnitDelay: 'Unit Delay' (':831:366') */
  ctrl_ez_DW.UnitDelay_DSTATE[0] = rtb_Add1_idx_0;
  ctrl_ez_DW.UnitDelay_DSTATE[1] = rtb_Add1_idx_1;
  ctrl_ez_DW.UnitDelay_DSTATE[2] = rtb_Add1_idx_2;

  /* Update for Memory: 'Memory' (':561') */
  ctrl_ez_DW.Memory_PreviousInput = *rty_lock;

  /* End of Outputs for RootInportFunctionCallGenerator generated from: 'trigger_ctrl_ez' (':21') */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

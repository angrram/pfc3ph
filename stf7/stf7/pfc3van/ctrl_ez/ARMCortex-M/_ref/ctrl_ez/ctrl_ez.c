/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: ctrl_ez.c
 *
 * Code generated for Simulink model 'ctrl_ez'.
 *
 * Model version                  : 1.628
 * Simulink Coder version         : 24.2 (R2024b) 21-Jun-2024
 * C/C++ source code generated on : Sun Apr 27 18:14:14 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex-M
 * Code generation objective: Execution efficiency
 * Validation result: Not run
 */

#include "ctrl_ez.h"
#include <stdbool.h>
#include "ctrl_ez_private.h"
#include "mw_cmsis.h"
#include "arm_math.h"
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
  float rtb_Switch1[2];
  float tmp[2];
  float iq_integ;
  float rtb_Delay1;
  float rtb_Gain;
  float rtb_algDD_o1;
  float rtb_algDD_o2;
  float rtb_one_by_3;
  float rtb_vd_park_l;
  float rtb_vq_park_o;
  int32_t rtb_Accumulator_o2;
  int32_t y;
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
  /* Switch: 'Switch1' (':831:483') incorporates:
   *  Constant: 'FilterConstant' (':831:478')
   *  Constant: 'OneMinusFilterConstant' (':831:480')
   */
  rtb_Switch1[0] = 0.8F;
  rtb_Switch1[1] = 0.2F;

  /* Product: 'Product1' (':831:365') incorporates:
   *  UnitDelay: 'Unit Delay' (':831:366')
   */
  mw_arm_scale_1_f32(&rtb_Switch1[1], &ctrl_ez_DW.UnitDelay_DSTATE[0],
                     &ctrl_ez_DW.fv[0], 3U);

  /* Sum: 'Add1' (':831:360') incorporates:
   *  Product: 'Product' (':831:364')
   *  Product: 'Product1' (':831:365')
   */
  ctrl_ez_DW.Kalphabeta0[0] = *rtu_ia * rtb_Switch1[0];
  ctrl_ez_DW.Kalphabeta0[1] = *rtu_ib * rtb_Switch1[0];
  ctrl_ez_DW.Kalphabeta0[2] = *rtu_ic * rtb_Switch1[0];
  mw_arm_add_f32(&ctrl_ez_DW.Kalphabeta0[0], &ctrl_ez_DW.fv[0],
                 &ctrl_ez_DW.Add1[0], 3U);

  /* DataStoreWrite: 'Data Store Write' (':2046') */
  filter_IA = ctrl_ez_DW.Add1[0];

  /* DataStoreWrite: 'Data Store Write1' (':2048') */
  filter_IB = ctrl_ez_DW.Add1[1];

  /* DataStoreWrite: 'Data Store Write2' (':2050') */
  filter_IC = ctrl_ez_DW.Add1[2];

  /* Switch: 'Switch' (':562') incorporates:
   *  Constant: 'Pi1' (':1837')
   *  Logic: 'AND' (':1985')
   *  Memory: 'Memory' (':561')
   *  RelationalOperator: 'Equal' (':1807')
   */
  *rty_lock = (((*rtu_w < 0.0F) || (*rtu_lock_pll == 0.0F)) &&
               ctrl_ez_DW.Memory_PreviousInput);

  /* Gain: 'one_by_3' (':2058:648') incorporates:
   *  Sum: 'Sum' (':2058:644')
   */
  rtb_one_by_3 = ((*rtu_va + *rtu_vb) + *rtu_vc) * 0.333333343F;

  /* Gain: 'Kalphabeta0' (':2058:641') incorporates:
   *  Gain: 'one_by_sqrt3_' (':2058:649')
   *  Sum: 'Sum1' (':2058:645')
   *  Sum: 'Sum2' (':2058:646')
   */
  ctrl_ez_DW.fv[0] = *rtu_va - rtb_one_by_3;
  ctrl_ez_DW.fv[1] = (*rtu_vb - *rtu_vc) * 0.577350259F;
  ctrl_ez_DW.fv[2] = rtb_one_by_3;
  mw_arm_mult_f32((float *)&rtCP_Kalphabeta0_Gain_h[0], &ctrl_ez_DW.fv[0],
                  &ctrl_ez_DW.Kalphabeta0[0], 3U);

  /* Outputs for Enabled SubSystem: 'ctrl' (':1270') incorporates:
   *  EnablePort: 'Enable' (':1272')
   */
  /* Logic: 'NOT' (':591') */
  if (!*rty_lock) {
    /* Gain: 'one_by_3' (':1278:648') incorporates:
     *  Sum: 'Sum' (':1278:644')
     */
    rtb_one_by_3 = ((ctrl_ez_DW.Add1[0] + ctrl_ez_DW.Add1[1]) + ctrl_ez_DW.Add1
                    [2]) * 0.333333343F;

    /* Gain: 'Kalphabeta0' (':1278:641') incorporates:
     *  Gain: 'one_by_sqrt3_' (':1278:649')
     *  Sum: 'Sum1' (':1278:645')
     *  Sum: 'Sum2' (':1278:646')
     */
    ctrl_ez_DW.fv[0] = ctrl_ez_DW.Add1[0] - rtb_one_by_3;
    ctrl_ez_DW.fv[1] = (ctrl_ez_DW.Add1[1] - ctrl_ez_DW.Add1[2]) * 0.577350259F;
    ctrl_ez_DW.fv[2] = rtb_one_by_3;
    mw_arm_mult_f32((float *)&rtCP_Kalphabeta0_Gain[0], &ctrl_ez_DW.fv[0],
                    &ctrl_ez_DW.Kalphabeta0_d[0], 3U);

    /* MATLAB Function: 'park_tf' (':2017') */
    rtb_vq_park_o = *rtu_sine * ctrl_ez_DW.Kalphabeta0_d[1] + *rtu_cos *
      ctrl_ez_DW.Kalphabeta0_d[0];
    rtb_vd_park_l = *rtu_sine * ctrl_ez_DW.Kalphabeta0_d[0] - *rtu_cos *
      ctrl_ez_DW.Kalphabeta0_d[1];

    /* DiscreteIntegrator: 'Accumulator' (':1374') */
    if (ctrl_ez_DW.Accumulator_DSTATE == 50.0F) {
      rtb_Accumulator_o2 = 1;
    } else if (ctrl_ez_DW.Accumulator_DSTATE == -50.0F) {
      rtb_Accumulator_o2 = -1;
    } else {
      rtb_Accumulator_o2 = 0;
    }

    /* DiscreteIntegrator: 'Accumulator' (':1385') */
    rtb_one_by_3 = ctrl_ez_DW.Accumulator_DSTATE_a;

    /* DiscreteIntegrator: 'Accumulator' (':1385') */
    if (ctrl_ez_DW.Accumulator_DSTATE_a > 100.0F) {
      /* DiscreteIntegrator: 'Accumulator' (':1385') */
      rtb_one_by_3 = 100.0F;
    } else if (ctrl_ez_DW.Accumulator_DSTATE_a < -100.0F) {
      /* DiscreteIntegrator: 'Accumulator' (':1385') */
      rtb_one_by_3 = -100.0F;
    }

    /* Delay: 'Delay1' (':1399') */
    rtb_Delay1 = ctrl_ez_DW.Delay1_DSTATE;

    /* DiscreteIntegrator: 'Accumulator' (':1396') incorporates:
     *  Delay: 'Delay1' (':1399')
     */
    if ((ctrl_ez_DW.Delay1_DSTATE > 0.0F) &&
        (ctrl_ez_DW.Accumulator_PrevResetState <= 0)) {
      ctrl_ez_DW.Accumulator_DSTATE_p = 0.0F;
    }

    /* DiscreteIntegrator: 'Accumulator' (':1396') */
    iq_integ = ctrl_ez_DW.Accumulator_DSTATE_p;

    /* DiscreteIntegrator: 'Accumulator' (':1396') */
    if (ctrl_ez_DW.Accumulator_DSTATE_p > 500.0F) {
      /* DiscreteIntegrator: 'Accumulator' (':1396') */
      iq_integ = 500.0F;
    } else if (ctrl_ez_DW.Accumulator_DSTATE_p < -500.0F) {
      /* DiscreteIntegrator: 'Accumulator' (':1396') */
      iq_integ = -500.0F;
    }

    /* Outputs for Atomic SubSystem: 'Two inputs CRL' (':2068:778') */
    /* AlgorithmDescriptorDelegate generated from: 'a16' (':2068:761') incorporates:
     *  Constant: 'Constant' (':1324')
     *  Constant: 'Constant1' (':1337')
     *  DiscreteIntegrator: 'Accumulator' (':1374')
     *  Gain: 'Gain1' (':1389')
     *  Gain: 'Gain1' (':1400')
     *  Gain: 'Gain1' (':1378')
     *  Gain: 'Gain' (':1333')
     *  Gain: 'Gain1' (':1342')
     *  MATLAB Function: 'park_tf' (':2016')
     *  Sum: 'Add2' (':1386')
     *  Sum: 'Add2' (':1397')
     *  Sum: 'Add2' (':1375')
     *  Sum: 'Sum1' (':1323')
     *  Sum: 'Sum2' (':1328')
     *  Sum: 'Sum3' (':1332')
     *  Sum: 'Sum4' (':1336')
     *  Sum: 'Sum5' (':1341')
     */
    arm_inv_park_f32(((*rtu_sine * ctrl_ez_DW.Kalphabeta0[0] - *rtu_cos *
                       ctrl_ez_DW.Kalphabeta0[1]) + 0.0471238904F *
                      rtb_vq_park_o) - (8.0F * ((0.3F * (700.0F - *rtu_ov_out) +
      ctrl_ez_DW.Accumulator_DSTATE) - rtb_vd_park_l) + rtb_one_by_3),
                     ((*rtu_sine * ctrl_ez_DW.Kalphabeta0[1] + *rtu_cos *
                       ctrl_ez_DW.Kalphabeta0[0]) - 0.0471238904F *
                      rtb_vd_park_l) - (8.0F * (0.0F - rtb_vq_park_o) + iq_integ),
                     &rtb_algDD_o1, &rtb_algDD_o2, *rtu_sine, *rtu_cos);

    /* End of Outputs for SubSystem: 'Two inputs CRL' (':2068:778') */

    /* Outputs for Atomic SubSystem: 'atan2' (':2028') */
    /* Trigonometry: 'Atan2' (':2028:325') */
    if ((rtb_algDD_o1 == 0.0F) && (rtb_algDD_o2 == 0.0F)) {
      rtb_Gain = 0.0F;
    } else {
      isReciprocal = false;
      if (rtb_algDD_o2 < 0.0F) {
        if (rtb_algDD_o1 < 0.0F) {
          quadrantInfo = 3U;
        } else {
          quadrantInfo = 4U;
        }
      } else if (rtb_algDD_o1 < 0.0F) {
        quadrantInfo = 2U;
      } else {
        quadrantInfo = 1U;
      }

      rtb_vd_park_l = (float)fabs(rtb_algDD_o1);
      rtb_Gain = (float)fabs(rtb_algDD_o2);
      if (rtb_Gain > rtb_vd_park_l) {
        rtb_vq_park_o = rtb_Gain;
        rtb_Gain = rtb_vd_park_l;
        isReciprocal = true;
      } else {
        rtb_vq_park_o = rtb_vd_park_l;
      }

      bpIdx = plook_u32ff_evenc(rtb_Gain / rtb_vq_park_o, 0.0F, 0.0666666701F,
        15U, &rtb_vd_park_l);
      rtb_Gain = intrp1d_fu32fl(bpIdx, rtb_vd_park_l, tableData_c);
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

    rtb_Gain *= 6.28318548F;

    /* End of Trigonometry: 'Atan2' (':2028:325') */

    /* MATLAB Function: 'mod_fcn' (':2052') incorporates:
     *  AlgorithmDescriptorDelegate generated from: 'a16' (':2028:305')
     */
    if (rtb_Gain == 0.0F) {
      rtb_vq_park_o = 0.0F;
    } else {
      rtb_vq_park_o = (float)fmod(rtb_Gain, 6.2831854820251465);
      isReciprocal = (rtb_vq_park_o == 0.0F);
      if (!isReciprocal) {
        rtb_Gain = (float)fabs(rtb_Gain / 6.28318548F);
        isReciprocal = ((float)fabs(rtb_Gain - (float)floor(rtb_Gain + 0.5F)) <=
                        1.1920929E-7F * rtb_Gain);
      }

      if (isReciprocal) {
        rtb_vq_park_o = 0.0F;
      } else if (rtb_vq_park_o < 0.0F) {
        rtb_vq_park_o += 6.28318548F;
      }
    }

    /* End of MATLAB Function: 'mod_fcn' (':2052') */
    /* End of Outputs for SubSystem: 'atan2' (':2028') */

    /* MATLAB Function: 'sector_selection' (':1809') */
    if ((rtb_vq_park_o >= 0.0F) && (rtb_vq_park_o < 1.04719758F)) {
      y = 0;
      isReciprocal = true;
    } else if ((rtb_vq_park_o >= 1.04719758F) && (rtb_vq_park_o < 2.09439516F))
    {
      y = 1;
      isReciprocal = false;
    } else if ((rtb_vq_park_o >= 2.09439516F) && (rtb_vq_park_o < 3.14159274F))
    {
      y = 2;
      isReciprocal = true;
    } else if ((rtb_vq_park_o >= 3.14159274F) && (rtb_vq_park_o < 4.18879032F))
    {
      y = 3;
      isReciprocal = false;
    } else if ((rtb_vq_park_o >= 4.18879032F) && (rtb_vq_park_o < 5.23598766F))
    {
      y = 4;
      isReciprocal = true;
    } else if ((rtb_vq_park_o >= 5.23598766F) && (rtb_vq_park_o < 6.28318548F))
    {
      y = 5;
      isReciprocal = false;
    } else {
      y = 1;
      isReciprocal = false;
    }

    rtb_vq_park_o -= (float)y * 1.04719758F;

    /* Sqrt: 'Sqrt' (':2027') incorporates:
     *  Product: 'Product' (':2024')
     *  Product: 'Product1' (':2025')
     *  Sum: 'Add' (':2026')
     */
    rtb_Gain = rtb_algDD_o1 * rtb_algDD_o1 + rtb_algDD_o2 * rtb_algDD_o2;
    mw_arm_sqrt_f32(&rtb_Gain, &rtb_algDD_o2, 1U);

    /* Sum: 'Add1' (':1981:360') incorporates:
     *  Product: 'Product' (':1981:364')
     *  Product: 'Product1' (':1981:365')
     *  UnitDelay: 'Unit Delay' (':1981:366')
     */
    rtb_algDD_o1 = *rtu_ov_out * 0.01F + 0.99F * ctrl_ez_DW.UnitDelay_DSTATE_f;

    /* Saturate: 'Saturation3' (':1853') */
    if (rtb_algDD_o1 > 2000.0F) {
      rtb_Gain = 2000.0F;
    } else if (rtb_algDD_o1 < 100.0F) {
      rtb_Gain = 100.0F;
    } else {
      rtb_Gain = rtb_algDD_o1;
    }

    /* End of Saturate: 'Saturation3' (':1853') */

    /* Saturate: 'Saturation' (':1823') incorporates:
     *  Constant: 'Constant' (':1789')
     *  Constant: 'Constant1' (':1792')
     *  Product: 'Divide1' (':1795')
     *  Sum: 'Add1' (':1790')
     *  Trigonometry: 'Sin' (':2063')
     *  Trigonometry: 'Sin1' (':2064')
     */
    tmp[0] = (float)sin(1.04719758F - rtb_vq_park_o) * rtb_algDD_o2 *
      1.73205078F / rtb_Gain;
    tmp[1] = (float)sin(rtb_vq_park_o) * rtb_algDD_o2 * 1.73205078F / rtb_Gain;
    mw_arm_saturate_f32(&tmp[0], (float *)&rtCP_Saturation_LowerSat, (float *)
                        &rtCP_Saturation_UpperSat, &rtb_Switch1[0], 2U);

    /* Sum: 'Sum of Elements' (':1941') */
    rtb_vq_park_o = rtb_Switch1[0] + rtb_Switch1[1];

    /* Switch: 'Switch' (':1877') */
    if (isReciprocal) {
      ctrl_ez_DW.TmpSignalConversionAtSelect[0] = rtb_Switch1[0];
      ctrl_ez_DW.TmpSignalConversionAtSelect[1] = rtb_Switch1[1];
    } else {
      ctrl_ez_DW.TmpSignalConversionAtSelect[0] = rtb_Switch1[1];
      ctrl_ez_DW.TmpSignalConversionAtSelect[1] = rtb_Switch1[0];
    }

    /* End of Switch: 'Switch' (':1877') */

    /* Saturate: 'Saturation2' (':1825') incorporates:
     *  Constant: 'Constant2' (':1797')
     *  Sum: 'Add2' (':1799')
     */
    if (1.0F - rtb_vq_park_o > 1.0F) {
      rtb_Gain = 1.0F;
    } else if (1.0F - rtb_vq_park_o < 0.0F) {
      rtb_Gain = 0.0F;
    } else {
      rtb_Gain = 1.0F - rtb_vq_park_o;
    }

    /* Gain: 'Gain' (':1802') incorporates:
     *  Saturate: 'Saturation2' (':1825')
     */
    rtb_Gain *= 0.5F;

    /* Sum: 'Add3' (':1803') */
    rtb_vq_park_o = ctrl_ez_DW.TmpSignalConversionAtSelect[1] + rtb_Gain;

    /* Saturate: 'Saturation4' (':1872') */
    if (rtb_vq_park_o > 1.0F) {
      rtb_vq_park_o = 1.0F;
    } else if (rtb_vq_park_o < 0.0F) {
      rtb_vq_park_o = 0.0F;
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
    y *= 3;
    ctrl_ez_DW.iv[0] = 0;
    ctrl_ez_DW.iv[1] = 1;
    ctrl_ez_DW.iv[2] = 2;
    mw_arm_bias_2_q31(&ctrl_ez_DW.iv[0], &y, &ctrl_ez_DW.iv1[0], 3U);

    /* Sum: 'Add4' (':1804') */
    rtb_vd_park_l = ctrl_ez_DW.TmpSignalConversionAtSelect[0] + rtb_vq_park_o;

    /* SignalConversion generated from: 'Selector' (':1810') */
    ctrl_ez_DW.Kalphabeta0[0] = rtb_Gain;
    ctrl_ez_DW.Kalphabeta0[1] = rtb_vq_park_o;

    /* Saturate: 'Saturation5' (':1873') */
    if (rtb_vd_park_l > 1.0F) {
      /* SignalConversion generated from: 'Selector' (':1810') */
      ctrl_ez_DW.Kalphabeta0[2] = 1.0F;
    } else if (rtb_vd_park_l < 0.0F) {
      /* SignalConversion generated from: 'Selector' (':1810') */
      ctrl_ez_DW.Kalphabeta0[2] = 0.0F;
    } else {
      /* SignalConversion generated from: 'Selector' (':1810') */
      ctrl_ez_DW.Kalphabeta0[2] = rtb_vd_park_l;
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
    ctrl_ez_DW.fv[0] = ctrl_ez_DW.Kalphabeta0[(int32_t)
      rtCP_DirectLookupTablenD_table[ctrl_ez_DW.iv1[0]] - 1];
    ctrl_ez_DW.fv[1] = ctrl_ez_DW.Kalphabeta0[(int32_t)
      rtCP_DirectLookupTablenD_table[ctrl_ez_DW.iv1[1]] - 1];
    ctrl_ez_DW.fv[2] = ctrl_ez_DW.Kalphabeta0[(int32_t)
      rtCP_DirectLookupTablenD_table[ctrl_ez_DW.iv1[2]] - 1];

    /* Saturate: 'Saturation1' (':1937') incorporates:
     *  Selector: 'Selector' (':1810')
     */
    mw_arm_saturate_f32(&ctrl_ez_DW.fv[0], (float *)&rtCP_Saturation1_LowerSat,
                        (float *)&rtCP_Saturation1_UpperSat, &ctrl_ez_DW.T2[0],
                        3U);

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
    if (rtb_one_by_3 == 100.0F) {
      /* Update for Delay: 'Delay' (':1933') */
      ctrl_ez_DW.Delay_DSTATE[1] = 1.0F;
    } else if (rtb_one_by_3 == -100.0F) {
      /* Update for Delay: 'Delay' (':1933') */
      ctrl_ez_DW.Delay_DSTATE[1] = -1.0F;
    } else {
      /* Update for Delay: 'Delay' (':1933') */
      ctrl_ez_DW.Delay_DSTATE[1] = 0.0F;
    }

    /* Update for DiscreteIntegrator: 'Accumulator' (':1385') */
    ctrl_ez_DW.Accumulator_DSTATE_a = rtb_one_by_3;

    /* DiscreteIntegrator: 'Accumulator' (':1396') */
    if (iq_integ == 500.0F) {
      /* Update for Delay: 'Delay1' (':1399') */
      ctrl_ez_DW.Delay1_DSTATE = 1.0F;
    } else if (iq_integ == -500.0F) {
      /* Update for Delay: 'Delay1' (':1399') */
      ctrl_ez_DW.Delay1_DSTATE = -1.0F;
    } else {
      /* Update for Delay: 'Delay1' (':1399') */
      ctrl_ez_DW.Delay1_DSTATE = 0.0F;
    }

    /* Update for DiscreteIntegrator: 'Accumulator' (':1396') */
    ctrl_ez_DW.Accumulator_DSTATE_p = iq_integ;
    if (rtb_Delay1 > 0.0F) {
      ctrl_ez_DW.Accumulator_PrevResetState = 1;
    } else if (rtb_Delay1 < 0.0F) {
      ctrl_ez_DW.Accumulator_PrevResetState = -1;
    } else if (rtb_Delay1 == 0.0F) {
      ctrl_ez_DW.Accumulator_PrevResetState = 0;
    } else {
      ctrl_ez_DW.Accumulator_PrevResetState = 2;
    }

    /* End of Update for DiscreteIntegrator: 'Accumulator' (':1396') */

    /* Update for UnitDelay: 'Unit Delay' (':1981:366') */
    ctrl_ez_DW.UnitDelay_DSTATE_f = rtb_algDD_o1;

    /* Update for Delay: 'Delay1' (':1377') */
    ctrl_ez_DW.Delay1_DSTATE_e = (float)rtb_Accumulator_o2;
  }

  /* End of Logic: 'NOT' (':591') */
  /* End of Outputs for SubSystem: 'ctrl' (':1270') */

  /* SignalConversion generated from: 'Qa' (':570') */
  *rty_Qa = ctrl_ez_DW.T2[0];

  /* Update for UnitDelay: 'Unit Delay' (':831:366') */
  ctrl_ez_DW.UnitDelay_DSTATE[0] = ctrl_ez_DW.Add1[0];
  ctrl_ez_DW.UnitDelay_DSTATE[1] = ctrl_ez_DW.Add1[1];
  ctrl_ez_DW.UnitDelay_DSTATE[2] = ctrl_ez_DW.Add1[2];

  /* Update for Memory: 'Memory' (':561') */
  ctrl_ez_DW.Memory_PreviousInput = *rty_lock;

  /* End of Outputs for RootInportFunctionCallGenerator generated from: 'trigger_ctrl_ez' (':21') */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

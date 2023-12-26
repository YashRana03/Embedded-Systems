# 1 "RTE/Device/MKL25Z128xxx4/system_MKL25Z4.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 366 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "RTE/Device/MKL25Z128xxx4/system_MKL25Z4.c" 2
# 99 "RTE/Device/MKL25Z128xxx4/system_MKL25Z4.c"
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdint.h" 1 3
# 56 "C:\\Keil_v5\\ARM\\ARMCLANG\\Bin\\..\\include\\stdint.h" 3
typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed int int32_t;
typedef signed long long int int64_t;


typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long int uint64_t;





typedef signed char int_least8_t;
typedef signed short int int_least16_t;
typedef signed int int_least32_t;
typedef signed long long int int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long int uint_least64_t;




typedef signed int int_fast8_t;
typedef signed int int_fast16_t;
typedef signed int int_fast32_t;
typedef signed long long int int_fast64_t;


typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long int uint_fast64_t;






typedef signed int intptr_t;
typedef unsigned int uintptr_t;



typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
# 100 "RTE/Device/MKL25Z128xxx4/system_MKL25Z4.c" 2
# 1 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h" 1
# 132 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef enum IRQn {

  NotAvail_IRQn = -128,


  NonMaskableInt_IRQn = -14,
  HardFault_IRQn = -13,
  SVCall_IRQn = -5,
  PendSV_IRQn = -2,
  SysTick_IRQn = -1,


  DMA0_IRQn = 0,
  DMA1_IRQn = 1,
  DMA2_IRQn = 2,
  DMA3_IRQn = 3,
  Reserved20_IRQn = 4,
  FTFA_IRQn = 5,
  LVD_LVW_IRQn = 6,
  LLWU_IRQn = 7,
  I2C0_IRQn = 8,
  I2C1_IRQn = 9,
  SPI0_IRQn = 10,
  SPI1_IRQn = 11,
  UART0_IRQn = 12,
  UART1_IRQn = 13,
  UART2_IRQn = 14,
  ADC0_IRQn = 15,
  CMP0_IRQn = 16,
  TPM0_IRQn = 17,
  TPM1_IRQn = 18,
  TPM2_IRQn = 19,
  RTC_IRQn = 20,
  RTC_Seconds_IRQn = 21,
  PIT_IRQn = 22,
  Reserved39_IRQn = 23,
  USB0_IRQn = 24,
  DAC0_IRQn = 25,
  TSI0_IRQn = 26,
  MCG_IRQn = 27,
  LPTMR0_IRQn = 28,
  Reserved45_IRQn = 29,
  PORTA_IRQn = 30,
  PORTD_IRQn = 31
} IRQn_Type;
# 198 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
# 1 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 1
# 29 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
# 63 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
# 1 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_version.h" 1 3
# 29 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_version.h" 3
# 64 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 2 3
# 115 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
# 1 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_compiler.h" 1 3
# 47 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_compiler.h" 3
# 1 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 1 3
# 31 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
# 64 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed)) T_UINT32 { uint32_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT16_WRITE { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT16_READ { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT32_WRITE { uint32_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT32_READ { uint32_t v; };
#pragma clang diagnostic pop
# 260 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  op2 %= 32U;
  if (op2 == 0U)
  {
    return op1;
  }
  return (op1 >> op2) | (op1 << (32U - op2));
}
# 295 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint8_t __CLZ(uint32_t value)
{
# 306 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
  if (value == 0U)
  {
    return 32U;
  }
  return __builtin_clz(value);
}
# 526 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline int32_t __SSAT(int32_t val, uint32_t sat)
{
  if ((sat >= 1U) && (sat <= 32U))
  {
    const int32_t max = (int32_t)((1U << (sat - 1U)) - 1U);
    const int32_t min = -1 - max ;
    if (val > max)
    {
      return max;
    }
    else if (val < min)
    {
      return min;
    }
  }
  return val;
}
# 551 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __USAT(int32_t val, uint32_t sat)
{
  if (sat <= 31U)
  {
    const uint32_t max = ((1U << sat) - 1U);
    if (val > (int32_t)max)
    {
      return max;
    }
    else if (val < 0)
    {
      return 0U;
    }
  }
  return (uint32_t)val;
}
# 737 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __enable_irq(void)
{
  __asm volatile ("cpsie i" : : : "memory");
}
# 750 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __disable_irq(void)
{
  __asm volatile ("cpsid i" : : : "memory");
}
# 762 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return(result);
}
# 792 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) : "memory");
  __builtin_arm_isb(0xF);
}
# 818 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_IPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, ipsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_APSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, apsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_xPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, xpsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_PSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, psp" : "=r" (result) );
  return(result);
}
# 890 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
}
# 914 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_MSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, msp" : "=r" (result) );
  return(result);
}
# 944 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
}
# 995 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, primask" : "=r" (result) );
  return(result);
}
# 1025 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
}
# 48 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include/cmsis_compiler.h" 2 3
# 116 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 2 3
# 210 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
typedef union
{
  struct
  {
    uint32_t _reserved0:28;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} APSR_Type;
# 240 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:23;
  } b;
  uint32_t w;
} IPSR_Type;
# 258 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:15;
    uint32_t T:1;
    uint32_t _reserved1:3;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} xPSR_Type;
# 297 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
typedef union
{
  struct
  {
    uint32_t nPRIV:1;
    uint32_t SPSEL:1;
    uint32_t _reserved1:30;
  } b;
  uint32_t w;
} CONTROL_Type;
# 328 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
typedef struct
{
  volatile uint32_t ISER[1U];
        uint32_t RESERVED0[31U];
  volatile uint32_t ICER[1U];
        uint32_t RESERVED1[31U];
  volatile uint32_t ISPR[1U];
        uint32_t RESERVED2[31U];
  volatile uint32_t ICPR[1U];
        uint32_t RESERVED3[31U];
        uint32_t RESERVED4[64U];
  volatile uint32_t IP[8U];
} NVIC_Type;
# 355 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
typedef struct
{
  volatile const uint32_t CPUID;
  volatile uint32_t ICSR;

  volatile uint32_t VTOR;



  volatile uint32_t AIRCR;
  volatile uint32_t SCR;
  volatile uint32_t CCR;
        uint32_t RESERVED1;
  volatile uint32_t SHP[2U];
  volatile uint32_t SHCSR;
} SCB_Type;
# 472 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t LOAD;
  volatile uint32_t VAL;
  volatile const uint32_t CALIB;
} SysTick_Type;
# 741 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    __asm volatile("":::"memory");
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __asm volatile("":::"memory");
  }
}
# 760 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0U] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 779 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
  }
}
# 798 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0U] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 817 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 832 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 850 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )] = ((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )] & ~(0xFFUL << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL))) |
       (((priority << (8U - 2)) & (uint32_t)0xFFUL) << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL)));
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] = ((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] & ~(0xFFUL << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL))) |
       (((priority << (8U - 2)) & (uint32_t)0xFFUL) << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL)));
  }
}
# 874 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )] >> ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL) ) & (uint32_t)0xFFUL) >> (8U - 2)));
  }
  else
  {
    return((uint32_t)(((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] >> ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL) ) & (uint32_t)0xFFUL) >> (8U - 2)));
  }
}
# 899 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(2)) ? (uint32_t)(2) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(2)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(2));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority & (uint32_t)((1UL << (SubPriorityBits )) - 1UL)))
         );
}
# 926 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(2)) ? (uint32_t)(2) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(2)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(2));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority = (Priority ) & (uint32_t)((1UL << (SubPriorityBits )) - 1UL);
}
# 950 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{

  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  vectors[(int32_t)IRQn + 16] = vector;





}
# 971 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{

  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return vectors[(int32_t)IRQn + 16];




}






__attribute__((__noreturn__)) static __inline void __NVIC_SystemReset(void)
{
  __builtin_arm_dsb(0xF);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = ((0x5FAUL << 16U) |
                 (1UL << 2U));
  __builtin_arm_dsb(0xF);

  for(;;)
  {
    __builtin_arm_nop();
  }
}
# 1027 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline uint32_t SCB_GetFPUType(void)
{
    return 0U;
}
# 1058 "C:/Users/Kumar/AppData/Local/Arm/Packs/ARM/CMSIS/5.9.0/CMSIS/Core/Include\\core_cm0plus.h" 3
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = (uint32_t)(ticks - 1UL);
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 2) - 1UL);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0UL;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) |
                   (1UL << 1U) |
                   (1UL );
  return (0UL);
}
# 199 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h" 2
# 1 "./RTE/Device/MKL25Z128xxx4\\system_MKL25Z4.h" 1
# 314 "./RTE/Device/MKL25Z128xxx4\\system_MKL25Z4.h"
extern uint32_t SystemCoreClock;
# 323 "./RTE/Device/MKL25Z128xxx4\\system_MKL25Z4.h"
void SystemInit (void);
# 332 "./RTE/Device/MKL25Z128xxx4\\system_MKL25Z4.h"
void SystemCoreClockUpdate (void);
# 200 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h" 2
# 224 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wc11-extensions"
#pragma clang diagnostic ignored "-Wreserved-id-macro"
#pragma clang diagnostic ignored "-Wgnu-anonymous-struct"
#pragma clang diagnostic ignored "-Wnested-anon-types"
# 250 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint32_t SC1[2];
  volatile uint32_t CFG1;
  volatile uint32_t CFG2;
  volatile const uint32_t R[2];
  volatile uint32_t CV1;
  volatile uint32_t CV2;
  volatile uint32_t SC2;
  volatile uint32_t SC3;
  volatile uint32_t OFS;
  volatile uint32_t PG;
  volatile uint32_t MG;
  volatile uint32_t CLPD;
  volatile uint32_t CLPS;
  volatile uint32_t CLP4;
  volatile uint32_t CLP3;
  volatile uint32_t CLP2;
  volatile uint32_t CLP1;
  volatile uint32_t CLP0;
       uint8_t RESERVED_0[4];
  volatile uint32_t CLMD;
  volatile uint32_t CLMS;
  volatile uint32_t CLM4;
  volatile uint32_t CLM3;
  volatile uint32_t CLM2;
  volatile uint32_t CLM1;
  volatile uint32_t CLM0;
} ADC_Type, *ADC_MemMapPtr;
# 620 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t CR0;
  volatile uint8_t CR1;
  volatile uint8_t FPR;
  volatile uint8_t SCR;
  volatile uint8_t DACCR;
  volatile uint8_t MUXCR;
} CMP_Type, *CMP_MemMapPtr;
# 817 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  struct {
    volatile uint8_t DATL;
    volatile uint8_t DATH;
  } DAT[2];
       uint8_t RESERVED_0[28];
  volatile uint8_t SR;
  volatile uint8_t C0;
  volatile uint8_t C1;
  volatile uint8_t C2;
} DAC_Type, *DAC_MemMapPtr;
# 997 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
       uint8_t RESERVED_0[256];
  struct {
    volatile uint32_t SAR;
    volatile uint32_t DAR;
    union {
      volatile uint32_t DSR_BCR;
      struct {
             uint8_t RESERVED_0[3];
        volatile uint8_t DSR;
      } DMA_DSR_ACCESS8BIT;
    };
    volatile uint32_t DCR;
  } DMA[4];
} DMA_Type, *DMA_MemMapPtr;
# 1232 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t CHCFG[4];
} DMAMUX_Type, *DMAMUX_MemMapPtr;
# 1334 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint32_t PDOR;
  volatile uint32_t PSOR;
  volatile uint32_t PCOR;
  volatile uint32_t PTOR;
  volatile const uint32_t PDIR;
  volatile uint32_t PDDR;
} FGPIO_Type, *FGPIO_MemMapPtr;
# 1509 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t FSTAT;
  volatile uint8_t FCNFG;
  volatile const uint8_t FSEC;
  volatile const uint8_t FOPT;
  volatile uint8_t FCCOB3;
  volatile uint8_t FCCOB2;
  volatile uint8_t FCCOB1;
  volatile uint8_t FCCOB0;
  volatile uint8_t FCCOB7;
  volatile uint8_t FCCOB6;
  volatile uint8_t FCCOB5;
  volatile uint8_t FCCOB4;
  volatile uint8_t FCCOBB;
  volatile uint8_t FCCOBA;
  volatile uint8_t FCCOB9;
  volatile uint8_t FCCOB8;
  volatile uint8_t FPROT3;
  volatile uint8_t FPROT2;
  volatile uint8_t FPROT1;
  volatile uint8_t FPROT0;
} FTFA_Type, *FTFA_MemMapPtr;
# 1790 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint32_t PDOR;
  volatile uint32_t PSOR;
  volatile uint32_t PCOR;
  volatile uint32_t PTOR;
  volatile const uint32_t PDIR;
  volatile uint32_t PDDR;
} GPIO_Type, *GPIO_MemMapPtr;
# 1965 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t A1;
  volatile uint8_t F;
  volatile uint8_t C1;
  volatile uint8_t S;
  volatile uint8_t D;
  volatile uint8_t C2;
  volatile uint8_t FLT;
  volatile uint8_t RA;
  volatile uint8_t SMB;
  volatile uint8_t A2;
  volatile uint8_t SLTH;
  volatile uint8_t SLTL;
} I2C_Type, *I2C_MemMapPtr;
# 2280 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t PE1;
  volatile uint8_t PE2;
  volatile uint8_t PE3;
  volatile uint8_t PE4;
  volatile uint8_t ME;
  volatile uint8_t F1;
  volatile uint8_t F2;
  volatile const uint8_t F3;
  volatile uint8_t FILT1;
  volatile uint8_t FILT2;
} LLWU_Type, *LLWU_MemMapPtr;
# 2617 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint32_t CSR;
  volatile uint32_t PSR;
  volatile uint32_t CMR;
  volatile uint32_t CNR;
} LPTMR_Type, *LPTMR_MemMapPtr;
# 2762 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t C1;
  volatile uint8_t C2;
  volatile uint8_t C3;
  volatile uint8_t C4;
  volatile uint8_t C5;
  volatile uint8_t C6;
  volatile uint8_t S;
       uint8_t RESERVED_0[1];
  volatile uint8_t SC;
       uint8_t RESERVED_1[1];
  volatile uint8_t ATCVH;
  volatile uint8_t ATCVL;
  volatile const uint8_t C7;
  volatile uint8_t C8;
  volatile const uint8_t C9;
  volatile const uint8_t C10;
} MCG_Type, *MCG_MemMapPtr;
# 3072 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
       uint8_t RESERVED_0[8];
  volatile const uint16_t PLASC;
  volatile const uint16_t PLAMC;
  volatile uint32_t PLACR;
       uint8_t RESERVED_1[48];
  volatile uint32_t CPO;
} MCM_Type, *MCM_MemMapPtr;
# 3221 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint32_t POSITION;
  volatile uint32_t MASTER;
  volatile uint32_t FLOW;
  volatile const uint32_t BASE;
       uint8_t RESERVED_0[3824];
  volatile const uint32_t MODECTRL;
       uint8_t RESERVED_1[156];
  volatile const uint32_t TAGSET;
  volatile const uint32_t TAGCLEAR;
       uint8_t RESERVED_2[8];
  volatile const uint32_t LOCKACCESS;
  volatile const uint32_t LOCKSTAT;
  volatile const uint32_t AUTHSTAT;
  volatile const uint32_t DEVICEARCH;
       uint8_t RESERVED_3[8];
  volatile const uint32_t DEVICECFG;
  volatile const uint32_t DEVICETYPID;
  volatile const uint32_t PERIPHID[8];
  volatile const uint32_t COMPID[4];
} MTB_Type, *MTB_MemMapPtr;
# 3488 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile const uint32_t CTRL;
       uint8_t RESERVED_0[28];
  struct {
    volatile uint32_t COMP;
    volatile uint32_t MASK;
    volatile uint32_t FCT;
         uint8_t RESERVED_0[4];
  } COMPARATOR[2];
       uint8_t RESERVED_1[448];
  volatile uint32_t TBCTRL;
       uint8_t RESERVED_2[3524];
  volatile const uint32_t DEVICECFG;
  volatile const uint32_t DEVICETYPID;
  volatile const uint32_t PERIPHID[8];
  volatile const uint32_t COMPID[4];
} MTBDWT_Type, *MTBDWT_MemMapPtr;
# 3698 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile const uint8_t BACKKEY3;
  volatile const uint8_t BACKKEY2;
  volatile const uint8_t BACKKEY1;
  volatile const uint8_t BACKKEY0;
  volatile const uint8_t BACKKEY7;
  volatile const uint8_t BACKKEY6;
  volatile const uint8_t BACKKEY5;
  volatile const uint8_t BACKKEY4;
  volatile const uint8_t FPROT3;
  volatile const uint8_t FPROT2;
  volatile const uint8_t FPROT1;
  volatile const uint8_t FPROT0;
  volatile const uint8_t FSEC;
  volatile const uint8_t FOPT;
} NV_Type, *NV_MemMapPtr;
# 3917 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t CR;
} OSC_Type, *OSC_MemMapPtr;
# 4024 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint32_t MCR;
       uint8_t RESERVED_0[220];
  volatile const uint32_t LTMR64H;
  volatile const uint32_t LTMR64L;
       uint8_t RESERVED_1[24];
  struct {
    volatile uint32_t LDVAL;
    volatile const uint32_t CVAL;
    volatile uint32_t TCTRL;
    volatile uint32_t TFLG;
  } CHANNEL[2];
} PIT_Type, *PIT_MemMapPtr;
# 4191 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t LVDSC1;
  volatile uint8_t LVDSC2;
  volatile uint8_t REGSC;
} PMC_Type, *PMC_MemMapPtr;
# 4336 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint32_t PCR[32];
  volatile uint32_t GPCLR;
  volatile uint32_t GPCHR;
       uint8_t RESERVED_0[24];
  volatile uint32_t ISFR;
} PORT_Type, *PORT_MemMapPtr;
# 4689 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile const uint8_t SRS0;
  volatile const uint8_t SRS1;
       uint8_t RESERVED_0[2];
  volatile uint8_t RPFC;
  volatile uint8_t RPFW;
} RCM_Type, *RCM_MemMapPtr;
# 4841 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile const uint32_t ENTRY[3];
  volatile const uint32_t TABLEMARK;
       uint8_t RESERVED_0[4028];
  volatile const uint32_t SYSACCESS;
  volatile const uint32_t PERIPHID4;
  volatile const uint32_t PERIPHID5;
  volatile const uint32_t PERIPHID6;
  volatile const uint32_t PERIPHID7;
  volatile const uint32_t PERIPHID0;
  volatile const uint32_t PERIPHID1;
  volatile const uint32_t PERIPHID2;
  volatile const uint32_t PERIPHID3;
  volatile const uint32_t COMPID[4];
} ROM_Type, *ROM_MemMapPtr;
# 5028 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint32_t TSR;
  volatile uint32_t TPR;
  volatile uint32_t TAR;
  volatile uint32_t TCR;
  volatile uint32_t CR;
  volatile uint32_t SR;
  volatile uint32_t LR;
  volatile uint32_t IER;
} RTC_Type, *RTC_MemMapPtr;
# 5262 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint32_t SOPT1;
  volatile uint32_t SOPT1CFG;
       uint8_t RESERVED_0[4092];
  volatile uint32_t SOPT2;
       uint8_t RESERVED_1[4];
  volatile uint32_t SOPT4;
  volatile uint32_t SOPT5;
       uint8_t RESERVED_2[4];
  volatile uint32_t SOPT7;
       uint8_t RESERVED_3[8];
  volatile const uint32_t SDID;
       uint8_t RESERVED_4[12];
  volatile uint32_t SCGC4;
  volatile uint32_t SCGC5;
  volatile uint32_t SCGC6;
  volatile uint32_t SCGC7;
  volatile uint32_t CLKDIV1;
       uint8_t RESERVED_5[4];
  volatile uint32_t FCFG1;
  volatile const uint32_t FCFG2;
       uint8_t RESERVED_6[4];
  volatile const uint32_t UIDMH;
  volatile const uint32_t UIDML;
  volatile const uint32_t UIDL;
       uint8_t RESERVED_7[156];
  volatile uint32_t COPC;
  volatile uint32_t SRVCOP;
} SIM_Type, *SIM_MemMapPtr;
# 5721 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t PMPROT;
  volatile uint8_t PMCTRL;
  volatile uint8_t STOPCTRL;
  volatile const uint8_t PMSTAT;
} SMC_Type, *SMC_MemMapPtr;
# 5856 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t C1;
  volatile uint8_t C2;
  volatile uint8_t BR;
  volatile uint8_t S;
       uint8_t RESERVED_0[1];
  volatile uint8_t D;
       uint8_t RESERVED_1[1];
  volatile uint8_t M;
} SPI_Type, *SPI_MemMapPtr;
# 6067 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint32_t SC;
  volatile uint32_t CNT;
  volatile uint32_t MOD;
  struct {
    volatile uint32_t CnSC;
    volatile uint32_t CnV;
  } CONTROLS[6];
       uint8_t RESERVED_0[20];
  volatile uint32_t STATUS;
       uint8_t RESERVED_1[48];
  volatile uint32_t CONF;
} TPM_Type, *TPM_MemMapPtr;
# 6350 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint32_t GENCS;
  volatile uint32_t DATA;
  volatile uint32_t TSHD;
} TSI_Type, *TSI_MemMapPtr;
# 6527 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t BDH;
  volatile uint8_t BDL;
  volatile uint8_t C1;
  volatile uint8_t C2;
  volatile const uint8_t S1;
  volatile uint8_t S2;
  volatile uint8_t C3;
  volatile uint8_t D;
  volatile uint8_t C4;
} UART_Type, *UART_MemMapPtr;
# 6876 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile uint8_t BDH;
  volatile uint8_t BDL;
  volatile uint8_t C1;
  volatile uint8_t C2;
  volatile uint8_t S1;
  volatile uint8_t S2;
  volatile uint8_t C3;
  volatile uint8_t D;
  volatile uint8_t MA1;
  volatile uint8_t MA2;
  volatile uint8_t C4;
  volatile uint8_t C5;
} UART0_Type, *UART0_MemMapPtr;
# 7258 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
typedef struct {
  volatile const uint8_t PERID;
       uint8_t RESERVED_0[3];
  volatile const uint8_t IDCOMP;
       uint8_t RESERVED_1[3];
  volatile const uint8_t REV;
       uint8_t RESERVED_2[3];
  volatile const uint8_t ADDINFO;
       uint8_t RESERVED_3[3];
  volatile uint8_t OTGISTAT;
       uint8_t RESERVED_4[3];
  volatile uint8_t OTGICR;
       uint8_t RESERVED_5[3];
  volatile uint8_t OTGSTAT;
       uint8_t RESERVED_6[3];
  volatile uint8_t OTGCTL;
       uint8_t RESERVED_7[99];
  volatile uint8_t ISTAT;
       uint8_t RESERVED_8[3];
  volatile uint8_t INTEN;
       uint8_t RESERVED_9[3];
  volatile uint8_t ERRSTAT;
       uint8_t RESERVED_10[3];
  volatile uint8_t ERREN;
       uint8_t RESERVED_11[3];
  volatile const uint8_t STAT;
       uint8_t RESERVED_12[3];
  volatile uint8_t CTL;
       uint8_t RESERVED_13[3];
  volatile uint8_t ADDR;
       uint8_t RESERVED_14[3];
  volatile uint8_t BDTPAGE1;
       uint8_t RESERVED_15[3];
  volatile uint8_t FRMNUML;
       uint8_t RESERVED_16[3];
  volatile uint8_t FRMNUMH;
       uint8_t RESERVED_17[3];
  volatile uint8_t TOKEN;
       uint8_t RESERVED_18[3];
  volatile uint8_t SOFTHLD;
       uint8_t RESERVED_19[3];
  volatile uint8_t BDTPAGE2;
       uint8_t RESERVED_20[3];
  volatile uint8_t BDTPAGE3;
       uint8_t RESERVED_21[11];
  struct {
    volatile uint8_t ENDPT;
         uint8_t RESERVED_0[3];
  } ENDPOINT[16];
  volatile uint8_t USBCTRL;
       uint8_t RESERVED_22[3];
  volatile const uint8_t OBSERVE;
       uint8_t RESERVED_23[3];
  volatile uint8_t CONTROL;
       uint8_t RESERVED_24[3];
  volatile uint8_t USBTRC0;
       uint8_t RESERVED_25[7];
  volatile uint8_t USBFRMADJUST;
} USB_Type, *USB_MemMapPtr;
# 7880 "C:/Users/Kumar/AppData/Local/Arm/Packs/Keil/Kinetis_KLxx_DFP/1.15.1/Device/Include\\MKL25Z4.h"
#pragma clang diagnostic pop
# 101 "RTE/Device/MKL25Z128xxx4/system_MKL25Z4.c" 2







uint32_t SystemCoreClock = 20971520u;





void SystemInit (void) {


  ((SIM_Type *)(0x40047000u))->COPC = (uint32_t)0x00u;
# 271 "RTE/Device/MKL25Z128xxx4/system_MKL25Z4.c"
}





void SystemCoreClockUpdate (void) {
  uint32_t MCGOUTClock;
  uint16_t Divider;

  if ((((MCG_Type *)(0x40064000u))->C1 & 0xC0u) == 0x00U) {

    if ((((MCG_Type *)(0x40064000u))->C6 & 0x40u) == 0x00U) {

      if ((((MCG_Type *)(0x40064000u))->C1 & 0x4u) == 0x00U) {

        MCGOUTClock = 8000000u;
        if ((((MCG_Type *)(0x40064000u))->C2 & 0x30u) != 0x00U) {
          switch (((MCG_Type *)(0x40064000u))->C1 & 0x38u) {
          case 0x38U:
            Divider = 1536U;
            break;
          case 0x30U:
            Divider = 1280U;
            break;
          default:
            Divider = (uint16_t)(32LU << ((((MCG_Type *)(0x40064000u))->C1 & 0x38u) >> 3));
            break;
          }
        } else {
          Divider = (uint16_t)(1LU << ((((MCG_Type *)(0x40064000u))->C1 & 0x38u) >> 3));
        }
        MCGOUTClock = (MCGOUTClock / Divider);
      } else {
        MCGOUTClock = 32768u;
      }

      switch (((MCG_Type *)(0x40064000u))->C4 & (0x80u | 0x60u)) {
        case 0x00U:
          MCGOUTClock *= 640U;
          break;
        case 0x20U:
          MCGOUTClock *= 1280U;
          break;
        case 0x40U:
          MCGOUTClock *= 1920U;
          break;
        case 0x60U:
          MCGOUTClock *= 2560U;
          break;
        case 0x80U:
          MCGOUTClock *= 732U;
          break;
        case 0xA0U:
          MCGOUTClock *= 1464U;
          break;
        case 0xC0U:
          MCGOUTClock *= 2197U;
          break;
        case 0xE0U:
          MCGOUTClock *= 2929U;
          break;
        default:
          break;
      }
    } else {

      Divider = (((uint16_t)((MCG_Type *)(0x40064000u))->C5 & 0x1Fu) + 0x01U);
      MCGOUTClock = (uint32_t)(8000000u / Divider);
      Divider = (((uint16_t)((MCG_Type *)(0x40064000u))->C6 & 0x1Fu) + 24U);
      MCGOUTClock *= Divider;
    }
  } else if ((((MCG_Type *)(0x40064000u))->C1 & 0xC0u) == 0x40U) {

    if ((((MCG_Type *)(0x40064000u))->C2 & 0x1u) == 0x00U) {
      MCGOUTClock = 32768u;
    } else {
      Divider = (uint16_t)(0x01LU << ((((MCG_Type *)(0x40064000u))->SC & 0xEu) >> 1));
      MCGOUTClock = (uint32_t) (4000000u / Divider);
    }
  } else if ((((MCG_Type *)(0x40064000u))->C1 & 0xC0u) == 0x80U) {

    MCGOUTClock = 8000000u;
  } else {

    return;
  }
  SystemCoreClock = (MCGOUTClock / (0x01U + ((((SIM_Type *)(0x40047000u))->CLKDIV1 & 0xF0000000u) >> 28)));
}

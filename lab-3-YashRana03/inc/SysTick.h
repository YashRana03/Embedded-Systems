/* ------------------------------------------
   Header file for ECS642U/714P SysTick Timer

   Functions
      Init_SysTick(t) initialse timer for t ticks (i.e. interrupts) per second
      waitSysTickCounter(int t)
          initialse counter to t ticks
          wait until it reaches zero
          call at start to initialise counter
  -------------------------------------------- */

#ifndef SYSTICK_H
#define SYSTICK_H

#include <stdint.h>
#include <stdio.h>

/* ECS642 Lab 1 header - provided version */

/* Function prototypes for cycle timing using SysTick */

void Init_SysTick(uint32_t ticksPerSec) ;
void waitSysTickCounter(int ticks) ;

// This variable is used to get the precise reaction time of the user
// Used in both main.c and SysTick.c
extern uint32_t counter1ms;
// This variable is a flag used to tell the SysTick_handler when to start incrementing the counter1ms variable
extern int counter1msON;





#endif
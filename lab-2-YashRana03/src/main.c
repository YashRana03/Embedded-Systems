/* ------------------------------------------
   ECS642/ECS714 Lab2

   The aim of this lab exercise is to understand how to react
   to button presses.
  -------------------------------------------- */

#include <stdbool.h>
#include <stdint.h>
#include <MKL25Z4.h>

#include "..\inc\SysTick.h"
#include "..\inc\led.h"
#include "..\inc\button.h"

/*----------------------------------------------------------------------------
  Variables for communication
 *----------------------------------------------------------------------------*/
bool pressedB1_ev;            // set by task1 (polling) and cleared by task 2
volatile uint32_t pressedB5_ev; // set by interrupt handler
                                //   Cleared by the task3

/*----------------------------------------------------------------------------
  task1pollB1
  
  This task polls button B1
*----------------------------------------------------------------------------*/
int b1State;        // Current state - corresponds to position
int b1BounceCount;

void initTask1() {
    b1State = BOPEN;
    pressedB1_ev = false;
    b1BounceCount = 0;
}

void task1pollB1() {
    if (b1BounceCount > 0)
        b1BounceCount--;
    switch (b1State) {
    case BOPEN:
        if (isPressed(B1MASK)) {
            b1State = BCLOSED;
            pressedB1_ev = true;
        }
        break;

    case BCLOSED:
        if (!isPressed(B1MASK)) {
            b1State = BBOUNCE;
            b1BounceCount = BOUNCEDELAY;
        }
        break;

    case BBOUNCE:
        if (isPressed(B1MASK)) {
            b1State = BCLOSED;
        } else if (b1BounceCount == 0) {
            b1State = BOPEN;
        }
        break;
    }
}

/*----------------------------------------------------------------------------
 * Interrupt Handler GPIO A
 *    - Clear the pending request
 *    - Test the bit to see if it generated the interrupt 
  ---------------------------------------------------------------------------- */
void PORTA_IRQHandler(void) {
    NVIC_ClearPendingIRQ(PORTA_IRQn);
    if ((PORTA->ISFR & B5MASK)) {
        // Add code to respond to interrupt here
        pressedB5_ev = 1;
    }
    // Clear status flags
    PORTA->ISFR = B5MASK;
}

/*----------------------------------------------------------------------------
  TASK: moveLit
  
  // This task checks if B1 has been pressed. If so it toggles the value in the direction variable and then it moves the Led
*----------------------------------------------------------------------------*/
int direction = 1;              // this variable keeps track of the current direction of the "ON" led. Value of 1 means left to right
int stateLEDS = LED_OFF;         // This variable holds the current state of the LEDS e.g all are on or all are off
int LEDS[] = {LED1, LED2, LED3, LED4, LED5}; // This array contains the macros of the LEDS 1 to 5
int currentLed = -1;             // This variable keeps track of the current LED
int c = 0;                       // This variable is the counter variable that makes sure the current LED changes after 1s

// This task checks if B1 has been pressed. If so it toggles the value in the direction variable and then it moves the Led
void moveLit() {

    // there is one case for each direction value
    // each case has the same structure
    switch (direction) {
    case 1:
        if (pressedB1_ev) {            // B1 has been pressed
            pressedB1_ev = false;       // acknowledge the event
            direction = 0;              // The direction has been switched
        }
        break;

    case 0:
        if (pressedB1_ev) {            // B1 has been pressed
            pressedB1_ev = false;       // acknowledge the event
            direction = 1;              // The direction has been switched
        }
        break;
    }

    if (c > 0)
        c--; // Decrements the counter if it is higher than 0

    // if the counter has reached 0 the LED will be switched to the next one
    if (c == 0) {

        // this clears the previously ON LED
        ledOnOff(LEDS[currentLed], stateLEDS);

        // this checks if the current direction of the movement and depending on that increments the currentLed or decrements it
        if (direction) {
            currentLed++;
            if (currentLed == 5)
                currentLed = 0;
        } else {
            currentLed--;
            if (currentLed == -1)
                currentLed = 4;
        }

        // This checks the stateLEDS to see what the default state of the LEDS is and depending on that
        // it switches the currentLed to be the opposite of that
        if (stateLEDS == LED_OFF) {
            ledOnOff(LEDS[currentLed], LED_ON);
        } else
            ledOnOff(LEDS[currentLed], LED_OFF);

        c = 100; // Sets the counter variable back to 0
    }
}

/*----------------------------------------------------------------------------
  TASK: toggleLit
  
  // This task toggles all the LEDs if B5 is pressed
*----------------------------------------------------------------------------*/
// This task toggles all the LEDs
void toggleLit() {
    // there is one case for each state
    // each case has the same structure
    switch (stateLEDS) {
    case LED_OFF:
        if (pressedB5_ev) {            // B5 has been pressed
            pressedB5_ev = false;       // acknowledge the event
            stateLEDS = 1;              // flips the LEDS state
            // Sets all the LEDs to the flipped LED state
            ledOnOff(LED1, LED_ON);
            ledOnOff(LED2, LED_ON);
            ledOnOff(LED3, LED_ON);
            ledOnOff(LED4, LED_ON);
            ledOnOff(LED5, LED_ON);
            // The current LED is set to the opposite LED state compared to the other LEDs
            ledOnOff(LEDS[currentLed], LED_OFF);
        }
        break;

    case LED_ON:
        if (pressedB5_ev) {           // B5 has been pressed
            pressedB5_ev = false;      // acknowledge the event
            stateLEDS = 0;             // flips the LEDS state
            // Sets all the LEDs to the flipped LED state
            ledOnOff(LED1, LED_OFF);
            ledOnOff(LED2, LED_OFF);
            ledOnOff(LED3, LED_OFF);
            ledOnOff(LED4, LED_OFF);
            ledOnOff(LED5, LED_OFF);
            // The current LED is set to the opposite LED state compared to the other LEDs
            ledOnOff(LEDS[currentLed], LED_ON);
        }
        break;
    }
}

/*----------------------------------------------------------------------------
  MAIN function
 *----------------------------------------------------------------------------*/

int main(void) {
    configureLEDs();                         // configure LED1-5 using GPIO
    configureButtons(B1MASK | B5MASK, true); // configures buttons B1 and B5 (with an interrupt)
    initTask1();                             // initialise task1 state
    Init_SysTick(1000);                       // initialse SysTick every 1ms
    waitSysTickCounter(10);
    while (1) {      // this runs forever
        task1pollB1();
        toggleLit();
        moveLit();
        // delay
        waitSysTickCounter(10);  // cycle every 10 ms - not explained until week 4
    }
}

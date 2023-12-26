/* ------------------------------------------
       ECS642/ECS714 Lab4

   The LED is displayed at different brightness levels using PWM
   The PIT is used to time the transition between the brightness levels
   A button press(B1) switches between 3 rates (by changing the PIT load value): 
       * a fast one cycles through all the brightness levels in 2 s
       * a medium one that takes 5 s
       * a slow one takes 9 s

    The led is switched between many different colours. The code produces 2 colour patterns which can be toggled when B2 is pressed.
  -------------------------------------------- */

#include <MKL25Z4.h>
#include <stdbool.h>
#include "../include/SysTick.h"
#include "../include/button.h"

#include "../include/pit.h"
#include "../include/TPMPWM.h"
#include "../include/triColorLedPWM.h"


/* --------------------------------------
     Documentation
     =============
     This is a cyclic system with a cycle time of 10ms

     The file has a main function, 3 tasks
       1. pollB1Task: this polls shield button B1
       2. pollB1Task: this polls shield button B2
       3. toggleRateTask: this toggles between a fast, medium and slow rate for changing the LED brightness
       and the PIT interrupt service routine which changes the brightness of 
       one of the LEDs
 -------------------------------------- */
 
/* --------------------------------------------
  Variables for communication
*----------------------------------------------------------------------------*/
bool pressedB1_ev ;  // set by pollB1Task (polling) and cleared by toggleRateTask
bool pressedB2_ev ;  // set by pollB2Task (polling) and cleared by makePatterns
/*----------------------------------------------------------------------------
  task1pollB1
  
  This task polls button B1. 
*----------------------------------------------------------------------------*/
int b1State ;        // Current state - corresponds to position
int b1BounceCount ;


void initPollB1Task() {
    b1State = BOPEN ;
    pressedB1_ev = false ; 
    b1BounceCount = 0 ;
}

void pollB1Task() {
    if (b1BounceCount > 0) b1BounceCount -- ;
    switch (b1State) {
        case BOPEN:
            if (isPressed(B1MASK)) {
                b1State = BCLOSED ;
                pressedB1_ev = true ; 
            }
          break ;

        case BCLOSED:
            if (!isPressed(B1MASK)) {
                b1State = BBOUNCE ;
                b1BounceCount = BOUNCEDELAY ;
            }
            break ;

        case BBOUNCE:
            if (isPressed(B1MASK)) {
                b1State = BCLOSED ;
            }
            else if (b1BounceCount == 0) {
                b1State = BOPEN ;
            }
            break ;
    }                
}

/*----------------------------------------------------------------------------
  task1pollB2
  
  This task polls button B2.
*----------------------------------------------------------------------------*/

int b2State ;        // Current state - corresponds to position
int b2BounceCount ;


void initPollB2Task() {
    b2State = BOPEN ;
    pressedB2_ev = false ; 
    b2BounceCount = 0 ;
}

void pollB2Task() {
    if (b2BounceCount > 0) b2BounceCount -- ;
    switch (b2State) {
        case BOPEN:
            if (isPressed(B2MASK)) {
                b2State = BCLOSED ;
                pressedB2_ev = true ; 
            }
          break ;

        case BCLOSED:
            if (!isPressed(B2MASK)) {
                b2State = BBOUNCE ;
                b2BounceCount = BOUNCEDELAY ;
            }
            break ;

        case BBOUNCE:
            if (isPressed(B2MASK)) {
                b2State = BCLOSED ;
            }
            else if (b2BounceCount == 0) {
                b2State = BOPEN ;
            }
            break ;
    }                
}




// PIT load values
// The larger the count, the lower the frequency of interrupts
const uint32_t pitSlowCount = PITCLOCK * 10 / 32 ; // all 32 levels in 10 s
const uint32_t pitFastCount = PITCLOCK * 2 / 32 ; // all 32 levels in 2 s

// PIT Load values for the color pattern 1
const uint32_t pattern1Fast = 109227; 
const uint32_t pattern1Medium = 273067;
const uint32_t pattern1Slow = 491520;

// PIT Load values for the color pattern 1
const uint32_t pattern2Fast = 163839;
const uint32_t pattern2Medium = 409599;
const uint32_t pattern2Slow = 737279;


// Pattern values
#define PATTERN1 0
#define PATTERN2 1


// Values for the state variable colorOn
#define BLUEINC 2
#define REDDEC 3
#define GREENINC 4
#define BLUEDEC 5
#define REDINC 6
#define GREENDEC 7


// Values for the state variable color2On
#define INC_BLUE_RED 8
#define DEC_BLUE_INC_GREEN 9
#define DEC_RED_INC_BLUE 10
#define DEC_BLUE_GREEN 11


unsigned int bright = 0 ;  // the current brightness for pattern 1 
int colorOn = GREENDEC; // State variable for pattern 1: used to know which led brightness to change next

unsigned bright1 = 0;  // the current brightness for pattern 2
int color2on = INC_BLUE_RED;  // State variable for pattern 2: used to know which led brightness to change next

// State variable to keep track of which led pattern is being produced
int pattern = PATTERN1;


/*
#define FAST 0
#define SLOW 1
*/


/*----------------------------------------------------------------------------
   Task: toggleRateTask

Toggle the rate of upadtes to the LEDs on every signal. It toggles between 3 rates: SLOW, FAST and MEDIUM.

   
*----------------------------------------------------------------------------*/

// Values for the rateState
#define SLOWRATE 2
#define MEDIUMRATE 3
#define FASTRATE 4

int rateState ;  // this variable holds the current state of the timer rate(speed): SLOW, MEDIUM, FAST

// initial state of task
void initToggleRateTask() {
    setTimer(0, pattern1Slow) ;
	  //setTimer(1, pitSlowCount) ;
    rateState = SLOWRATE ;
}

// This task is used to switch the rate at which the colour brightness is changed: SLOW, MEDIUM, FAST
void toggleRateTask() {

    // Switch statement checks the current state of the rate and depending on that, it sets the new rate/PIT values
    // If the current rateState is SLOWRATE when B1 will be pressed, the new rate will be set to MEDIUMRATE

    switch (rateState) {
        // if the current rate is slow
        case SLOWRATE:
            // if B1 has been pressed
            if (pressedB1_ev) {                   // signal received
                pressedB1_ev = false;            // acknowledge
                if (pattern == PATTERN1) {         // checks which pattern is the current pattern
                    setTimer(0, pattern1Medium);  // Depending on the pattern, it updates the PIT values to change the rate
                } else {
                    setTimer(0, pattern2Medium);
                }
                rateState = MEDIUMRATE;           // ... the new rateState 
            }
            break;
        // if the current rate is medium
        case MEDIUMRATE:
            // if B1 has been pressed
            if (pressedB1_ev) {                  // signal received
                pressedB1_ev = false;           // acknowledge
                if (pattern == PATTERN1) {        // checks which pattern is the current pattern
                    setTimer(0, pattern1Fast);    // Depending on the pattern, it updates the PIT values to change the rate
                } else {
                    setTimer(0, pattern2Fast);
                }
                rateState = FASTRATE;           // ... the new rateState
            }
            break;
        // if the current rate is medium
        case FASTRATE:
            // if B1 has been pressed
            if (pressedB1_ev) {                   // signal received
                pressedB1_ev = false;            // acknowledge
                if (pattern == PATTERN1) {         // checks which pattern is the current pattern
                    setTimer(0, pattern1Slow);     // Depending on the pattern, it updates the PIT values to change the rate
                } else {
                    setTimer(0, pattern2Slow);
                }
                rateState = SLOWRATE;           // ... the new rateState
            }
            break;
    }
}


// This function is called upon by the PIT interrupt handler to change the LED brightness everytime the PIT counter reaches 0 and to alternate the patter if B2 is pressed
void makePatterns() {

    // The initial if statement checks whether B2 has been pressed and if so,
    // The if/else statements inside will then toggle the pattern state and set the appropriate states for the new pattern
    // to be produced

    if (pressedB2_ev) {
        pressedB2_ev = false;
        if (pattern == PATTERN1) {
            pattern = PATTERN2;          // Update pattern state
            setLEDBrightness(Red, 0);    // Set appropriate LEDs brightness
            setLEDBrightness(Blue, 0);
            setLEDBrightness(Green, 0);
            color2on = INC_BLUE_RED;     // Set the pattern 2's color2on state to the initial state
            bright1 = 0;                 // Reset the bright2 to 0

            // Load the appropriate PIT value for the new pattern
            if (rateState == SLOWRATE) setTimer(0, pattern2Slow);
            if (rateState == MEDIUMRATE) setTimer(0, pattern2Medium);
            if (rateState == FASTRATE) setTimer(0, pattern2Fast);

        } else {

            pattern = PATTERN1;          // Update pattern state 
            setLEDBrightness(Red, 31);   // Set appropriate LEDs brightness
            setLEDBrightness(Blue, 0);
            setLEDBrightness(Green, 0);
            colorOn = BLUEINC;           // Set the pattern 1's color1on state to the initial state
            bright = 0;                  // Reset the bright1 to 0

            // Load the appropriate PIT value for the new pattern
            if (rateState == SLOWRATE) setTimer(0, pattern1Slow);
            if (rateState == MEDIUMRATE) setTimer(0, pattern1Medium);
            if (rateState == FASTRATE) setTimer(0, pattern1Fast);
        }
    }


    // This is the nested switch statement that checks the current pattern state
    switch (pattern) {
        // IF pattern1
        case PATTERN1:
            // Another switch statement inside checks the state of the color1On 
            // Based on that the appropriate case will be executed
            switch (colorOn) {
                // In the BLUINC phase of pattern 1, the blue Led brightness will be incremented gradually from 0(lowest) to 31(highest)
                // Once the led brightness has reached its final value, the color1on is updated in order to go to the next phase in the pattern
                case BLUEINC:
                    if (bright == 31) colorOn = REDDEC;
                    if (bright < 31) bright++;
                    setLEDBrightness(Blue, bright);
                    break;
                // In the REDDEC phase of pattern 1, the red Led brightness will be decremented gradually from 31(highest) to 0(lowest)
                // Once the led brightness has reached its final value, the color1on is updated in order to go to the next phase in the pattern
                case REDDEC:
                    if (bright == 0) colorOn = GREENINC;
                    if (bright > 0) bright--;
                    setLEDBrightness(Red, bright);
                    break;
                // The same logic used for the above two cases is used in the rest of the cases below

                case GREENINC:
                    if (bright == 31) colorOn = BLUEDEC;
                    if (bright < 31) bright++;
                    setLEDBrightness(Green, bright);
                    break;

                case BLUEDEC:
                    if (bright == 0) colorOn = REDINC;
                    if (bright > 0) bright--;
                    setLEDBrightness(Blue, bright);
                    break;

                case REDINC:
                    if (bright == 31) colorOn = GREENDEC;
                    if (bright < 31) bright++;
                    setLEDBrightness(Red, bright);
                    break;

                case GREENDEC:
                    if (bright == 0) colorOn = BLUEINC;
                    if (bright > 0) bright--;
                    setLEDBrightness(Green, bright);
                    break;
                // At the end the GREENDEC will wrap around to the first phase in the cycle: BLUEINC where the blue brightness is incremented
            }

            break;

        // If the current pattern is pattern 2
        case PATTERN2:
            // Another switch statement inside checks the state of the color2On 
            // Based on that, the appropriate case will be executed
            switch (color2on) {
                // In the case of INC_BLUE_RED the both the red and blue led brightness are incremented from 0(lowest) to 31 (highest) gradually
                // When the two leds have reached their final value of 31 the color2On state is changed to go to the next phase in the cycle
                case INC_BLUE_RED:
                    if (bright1 == 31) color2on = DEC_BLUE_INC_GREEN;
                    if (bright1 < 31) bright1++;
                    setLEDBrightness(Blue, bright1);
                    setLEDBrightness(Red, bright1);
                    break;

                // In the case of DEC_BLUE_INC_GREEN the Blue led is decremented from 31 to 0 while the red led is incremeted
                // from 0 to 31
                case  DEC_BLUE_INC_GREEN:
                    if (bright1 == 0) color2on = DEC_RED_INC_BLUE;
                    if (bright1 > 0) bright1--;
                    setLEDBrightness(Blue, bright1);
                    setLEDBrightness(Green, 31 - bright1);
                    break;
                // Similar logic is applied to the rest of the cases below

                case  DEC_RED_INC_BLUE:
                    if (bright1 == 31) color2on = DEC_BLUE_GREEN;
                    if (bright1 < 31) bright1++;
                    setLEDBrightness(Blue, bright1);
                    setLEDBrightness(Red, 31 - bright1);
                    break;

                case DEC_BLUE_GREEN:
                    if (bright1 == 0) color2on = INC_BLUE_RED;
                    if (bright1 > 0) bright1--;
                    setLEDBrightness(Blue, bright1);
                    setLEDBrightness(Green, bright1);
                    break;
                // Finally the DEC_BLUE_GREEN will wrap back to the first phase in the cycle of pattern 2: INC_BLUE_RED
            }
            break;

    }

}


/* -------------------------------------
    Programmable Interrupt Timer (PIT) interrupt handler

      Check each channel to see if caused interrupt
      Write 1 to TIF to reset interrupt flag

     Changes the LED brightness and colour gradually.  It does so by calling the makePatterns function everytime the PIT counter has counted
     down to zero. 
   ------------------------------------- */


void PIT_IRQHandler(void) {
    // clear pending interrupts
    NVIC_ClearPendingIRQ(PIT_IRQn);
	
    if (PIT->CHANNEL[0].TFLG & PIT_TFLG_TIF_MASK) {
			  
        // clear TIF
        PIT->CHANNEL[0].TFLG = PIT_TFLG_TIF_MASK ;  
        makePatterns();			
    }

    if (PIT->CHANNEL[1].TFLG & PIT_TFLG_TIF_MASK) {
        // clear TIF
        PIT->CHANNEL[1].TFLG = PIT_TFLG_TIF_MASK ;  
    }
}

/*----------------------------------------------------------------------------
  MAIN function
 *----------------------------------------------------------------------------*/
int main (void) {
    configureLEDforPWM() ;            // Configure LEDs for PWM control
    configureButtons(B1MASK, false) ; // ConfigureButtons B1 for polling
    configureButtons(B2MASK, false) ; // ConfigureButtons B2 for polling
    configurePIT(0) ;        // configure PIT channel 0
    configureTPMClock() ;    // clocks to all TPM modules
    configureTPM0forPWM() ;  // configure PWM on TPM0 (blue LED)
    configureTPM2forPWM() ;  // configure PWM on TPM2 (red, green LEDs)
   
    Init_SysTick(1000) ;  // initialse SysTick every 1 ms

    // start everything
    setLEDBrightness(Red, 31) ;
    setLEDBrightness(Green, 0) ;
    setLEDBrightness(Blue, 0) ;

    initPollB1Task() ;       // initialise task state
    initPollB2Task() ; 
    initToggleRateTask() ;   // initialise task state
    startTimer(0) ;
    waitSysTickCounter(10) ;  // initialise delay counter
	 
    while (1) {      // this runs forever
        pollB1Task() ;  // Generate signals for button 1 when pressed
        pollB2Task();   // Generate signals for button 2 when pressed
        toggleRateTask();    // Toggle LED update rate on every press signal
	// delay
        waitSysTickCounter(10) ;  // cycle every 10 ms 
    }
}
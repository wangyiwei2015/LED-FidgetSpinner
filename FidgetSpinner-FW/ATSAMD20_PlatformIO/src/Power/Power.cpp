#include <Power/Power.hpp>

void startWDT4() {
    WDTCSR = bit (WDCE) | bit (WDE); //allow changes, disable rst, enable Watchdog int
    WDTCSR = bit (WDIE) | bit (WDP3); //[3:0]1000, 512k, 4s (see datasheet p55)
    wdt_reset();  //start watchdog timer
}

void Power::initLowPower() {
    MCUSR = 0; //clear various "reset" flags
    startWDT4();
    set_sleep_mode(SLEEP_MODE_PWR_DOWN); //prepare for powerdown  
    sleep_enable();
    //turn off brown-out enable in software
    MCUCR = bit (BODS) | bit (BODSE);
    MCUCR = bit (BODS);
    //previousADCSRA = ADCSRA;
    ADCSRA &= ~(1<<ADEN); //Disable ADC
    ACSR = (1<<ACD); //Disable the analog comparator
    DIDR0 = 0x3F; //Disable digital input buffers on all ADC0-ADC5 pins
    //DIDR1 = (1<<AIN1D) | (1<<AIN0D); //Disable digital input buffer on AIN1/0

    power_twi_disable();
    power_spi_disable();
    //power_usart0_disable(); //Needed for serial.print
    //power_timer0_disable(); //Needed for delay and millis()
    power_timer1_disable();
    power_timer2_disable(); //Needed for asynchronous 32kHz operation
}

void Power::sleep() {
    sleep_enable();
    sleep_cpu();
}

void Power::wake() {
    sleep_disable();
}
#ifndef _POWER_HPP
#define _POWER_HPP

#include <avr/wdt.h>
#include <avr/sleep.h>
#include <avr/power.h>
#include <Arduino.h>

class Power {
private:
    //
public:
    void initLowPower();
    void sleep();
    void wake();
};

#endif
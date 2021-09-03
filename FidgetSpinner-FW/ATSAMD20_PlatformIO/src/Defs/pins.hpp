#ifndef _PINS_HPP
#define _PINS_HPP

#include <Arduino.h>

void setLED(byte data) {
    //PortB - 012, PortC - 3, PortD - 4567
    //PORTB = (PORTB & 0b11111000) | (data & 0b00000111);
    //PORTC = (PORTC & 0b11110111) | (data & 0b00001000);
    //PORTD = (PORTD & 0b00001111) | (data & 0b11110000);
    _MMIO_BYTE(0x25) = (_MMIO_BYTE(0x25) & 0b11111000) | (data & 0b00000111);
    _MMIO_BYTE(0x28) = (_MMIO_BYTE(0x28) & 0b11111000) | (data & 0b00000111);
    _MMIO_BYTE(0x2B) = (_MMIO_BYTE(0x2B) & 0b11111000) | (data & 0b00000111);
}

#endif
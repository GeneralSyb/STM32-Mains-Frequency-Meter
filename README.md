# STM32-Mains-Frequency-Meter
Simple high precision GPS calibrated mains frequency meter using an STM32C0.
# CAUTION: MAINS VOLTAGE
This project was not designed with mains voltage safety as the top priority. Please don't take this project as an example, research safety standards and use common sense when dealing with these voltages!!!
![DSC_3271_web](https://github.com/user-attachments/assets/b9092e3c-3408-40da-9792-df35500f15be)
# Theory of operation
Most frequency meters use a zero crossing detector and a comparator to generate a square wave signal which should have the exact frequency of the mains net. This can be done in many ways, but for safety and simplicity a 15VAC transformer was used to isolate the low voltage digital section from the mains. Due to the fact that the transformer is not put under any load, the voltage is quite a bit higher than 15V. In this case about 23V RMS was measured on the output of the transformer when powered with \~230VAC. This voltage was taken into account when calculating the circuit that goes in front of the comparator. The signal is AC coupled and adjusted up with a voltage divider. The non-inverting input of the comparator is connected to a simple voltage divider with a multi-turn potentiometer. The duty cycle of the output signal is not very important, but it also shouldn't be on the edge. So anywhere from 25-75% duty cycle would work perfectly fine.
## STM32 Timers
The STM32's timer can be configured to measure the frequency and duty cycle of a signal. This is usually used to determine the DC of a PWM signal from for example a temperature sensor. However it can also be used to very accurately determine the frequency of a signal. This is due to the large 16 bit timer (on some STM32s even 32 bit!) which can easily get your resolution into the mHz range.
## GPS Calibration
The internal RC oscillator in the STM32 isn't bad, but it's also not really good enough for a high accuracy frequency meter. It has quite a lot of drift from temperature changes and from the factory isn't perfectly tuned to 48 MHz. An external crystal oscillator massively improves this. But we can do even better. Normally you'd need a very expensive oscillator for the best accuracy. But if you have access to a bit of open sky you can also 'borrow' the extremely expensive atomic clocks used for GPS. Almost all GPS receivers put out a very nice PPS (pulse per second) signal which is good for ns level accuracy. By connecting this signal to the STM32 we can 'calibrate' the STM32's measurements in a way. If we expected to get for example 1000 pulses from the oscillator, but we got 1001, we know that we are running fast by 0.1%.
# Hardware
For this project the following major components were used:
- STM32C071KBT
Very cheap, QFP package STM32 with USB support.
- MCP6561R Comparator
A very fast comparator, although not the most robust option available.
- ATGM336H GPS Module
Very cheap GPS. Nothing fancy is needed, so an easy way to save costs and complexity
- HLK-PM01 5V Supply
A cheap Chinese 5V supply, simplifies hardware design and costs.
- XC6220B331MR-G
A very stable 3.3V LDO which isn't very picky about input and output capacitors. Possibly overkill.
- LM66100DCK
Ideal diode for switching between USB and on-board power supply.
- SM712 USB TVS Diode
As the name says, protects the USB data lines.
# Firmware
The firmware was written using the STM32CubeIDE 1.19.0 and is mostly programmed using standard HAL functions. For USB CDC support TinyUSB was used due to the limited amount of memory and RAM available on this microcontroller and large footprint of ST's own USB library (which has terrible support). This was written based on a tutorial from Phil's Lab (https://www.youtube.com/watch?v=XgsnJdY8LsY). The firmware is still in a sort of test state and is written for hardware which has a few faults in it, such as no UART communication with the GPS module. But because the base firmware is pretty basic it shouldn't be very difficult to add other functionality.
# Issues in prototype
1. No proper EMI mitigation and TVS protection on USB-C's power lines. There should be a TVS diode and a ferrite bead for the power line.
2. Missing ideal diode, making it so that you can only power the digital section from the onboard supply. Simply forgot to order the part.
3. Mains terminal block is too small. There should be more space between the pins.
4. Comparator not connected to the microcontroller. (fixed in design)
5. GPS UART not connected to the right pins. (fixed in design)
6. Crystal not working at 48 MHz. The selected crystal is one with a 3rd overtone operation mode, so it's base frequency is 16 MHz and not 48 MHz. This microcontroller cannot use the third overtone. Fixed in software, but measuring resolution is affected by it.
# Recommendations
1. Fix USB protection issues.
2. Choose more readily available transformer.
3. In case an external microcontroller (such as an ESP32 for WiFi support) is powered by a the onboard supply, use a higher wattage 5V supply or only power from USB. Keep in mind that the different wattage Hi-Link modules have slightly different dimensions so footprint will change.
4. Replace crystal with a smaller one that has a 48 MHz fundamental frequency for higher measuring resolution.


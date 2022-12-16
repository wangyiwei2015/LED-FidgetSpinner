# LED-FidgetSpinner
Battery-powered LED Fidget Spinner. **PhOVS**

Design & concept reference: [8Mode Fidget Spinner](https://www.8mode.com/spinner/)



Warning: this is still under development.

Warning: there maybe better MCU model for this application.



### Development Tools

PCB: **KiCAD**

​    --> ./FidgetSpinner-PCB/

Firmware: **STM32CubeMX** & **CLion**

​    --> ./FidgetSpinner-FW/STM32L010_CLion/

3D Models: **Shapr3D** for iPad

​    --> ./FidgetSpinner-Struct/



### BOM

| Name           | Model         | Package | Quantity | Price (CNY each) |
| -------------- | ------------- | ------- | -------- | ---------------- |
| MCU            | STM32L010K8T6 |         | 1        | 33               |
| Regulator      | BL8530        |         | 1        | 0.16             |
| Optical Sensor | GP2S60        |         | 1        | 3.50             |
| Switch         | MSK-12C02     |         | 1        | 0.16             |
| Button         |               |         | 1        |                  |
| Battery        | CR2450        | CR2450  | 3        |                  |
| Battery Case   |               |         | 3        |                  |
| LED            | warm-white    | 0805    | 8        |                  |
| Diode          | D             | 0805    | 2        | 0.06             |
| L              | 47uH          | 0805    | 1        |                  |
| C              | 100nF         | 0805    | 3        |                  |
| C              | 1uF           | 0805    | 1        |                  |
| C              | 47uF          | 0805    | 1        |                  |
| R_LED          | 1k1           | 0805    | 8        |                  |
| R_IR           | 3k3           | 0805    | 1        |                  |
| R_Comp         | 20k           | 0805    | 1        |                  |
| R_Comp         | 33k           | 0805    | 1        |                  |
| R_Tr           | 1M            | 0805    | 1        |                  |
| R              | 10k           | 0805    | 3        |                  |



Different coin-sized 3V battery cells

| Name   | Capacity(mAh) | I(uA) | Ic(mA) | Imax(mA) | Weight(g) |
| ------ | ------------- | ----- | ------ | -------- | --------- |
| CR2477 | 950           | 200   | 3      | 20       | 9.9       |
| CR2450 | 550           | 200   | 3      | 20       | 5.8       |
| CR2430 | 270           | 200   | 3      | 20       | 4.3       |
| CR3032 | 550           | 200   | 3      | 20       | 6.8       |
| CR2032 | 210           | 200   | 2      | 20       | 3.0       |
| CR2025 | 150           | 200   | 2      | 20       | 2.5       |


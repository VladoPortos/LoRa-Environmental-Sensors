# LoRa Environmental Sensors 


<img src="https://raw.githubusercontent.com/spielhuus/sensors/master/atmega328-sensor/schema.png" width="15%"></img> <img src="https://raw.githubusercontent.com/spielhuus/sensors/master/atmega328-sensor/ATmega328.png" width="15%"></img> <!-- img src="https://cloud.githubusercontent.com/assets/4307137/10105284/26aa7ad4-63ae-11e5-88b7-bc523a095c9f.png" width="15%"></img> <img src="https://cloud.githubusercontent.com/assets/4307137/10105288/28698fae-63ae-11e5-8ba7-a62360a8e8a7.png" width="15%"></img> <img src="https://cloud.githubusercontent.com/assets/4307137/10105283/251b6868-63ae-11e5-9918-b789d9d682ec.png" width="15%"></img> <img src="https://cloud.githubusercontent.com/assets/4307137/10105290/2a183f3a-63ae-11e5-9380-50d9f6d8afd6.png" width="15%"></img --> 

This Sensor can run of a battery and measures temperature, humidity and barometric pressure and send the data to TTN. 
The Board is using the ATmega328 processor, the Hope RFM96W Lora Module and the BME280 barometric pressure sensor. 

## BOM

The ATmega microprocessor needs an arduino bootloader. To burn a bootloader to the blank chip see [1]

|Ref|Value|Footprint|Datasheet|Manufacturer|Vendor|
| --- | --- | --- | --- | --- | --- |
|BT1|Battery_Cell|Battery:BatteryHolder_Keystone_3034_1x20mm| | | |
|U1|BME280BreakoutBoard|Sparkfun BME280:Sparkfun bme280| | | |
|U2|ATtiny85-20SU|Package_DIP:DIP-8_W7.62mm_Socket|http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf| | | |
|U3|RFM95W-868S2|RF_Module:HOPERF_RFM9XW_SMD|http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf| | | |

## Wiring

| HopeRF RFM95 LoRa transceiver module |	ATmega8 Pin |   |	   	HopeRF RFM95 LoRa transceiver module |	ATmega8 Pin |
| ----- | ---- | --- | ---- | ---- |
| ANT |	- |   |	   	GND |	- |
| GND |	GND |   |	   	DIO5 | 	- |
| DIO3 |	- 	 |   |  	RESET |	PD5 (11) |
| DIO4 |	- 	  |   | 	NSS |	PB2 (16) |
| 3.3V |	3.3V 	|   |   	SCK |	PB5 (19) |
| DIO0 |	PD2 (4) |   | 	MOSI 7	PB3 (17) |
| DIO1 |	PD3 (5) |   | 	MISO |	PB4 (18) |
| DIO2 |	- 	  |   | 	GND |	- |

## Prepare the Arduino IDE

I asume the arduino IDE is already installed. 

Add the Libraries to you IDE:

- Within the IDE Libarary Manager Install the BME280 Library by Tyler Glenn.
- Install the lmic library as ZIP file.
  - Download the arduino-lmic library as zip file from: https://github.com/matthijskooijman/arduino-lmic
  - Install the arduino-lmic-master.zip in the Arduino IDE:
    Select menu: Sketch | Include Library | Add .Zip Library 
- Make the following changes in ./arduino-lmic-master/src/lmic/config.h:
  - If you live in Europe, set: #define CFG_eu868 1
  - If you use a HopeRF RFM95 module, set: #define CFG_sx1276_radio 1
  - If you want logging in the serial monitor, set:
    - #define LMIC_DEBUG_LEVEL 2
    - #define LMIC_FAILURE_TO Serial
  - Uncomment line: #define DISABLE_PING
    Disable this feature. It is not needed and space is freed up.
  - Uncomment line: #define DISABLE_BEACONS

    Disable this feature. It is not needed and space is freed up.

## Installation

 the armega328-sensor.ino sketarduinofile  ch from this repository into the arduino ide. 
 Edit the keys from TTN in the sketch and change the PIN-Mappings:

```
const lmic_pinmap lmic_pins = {
  .nss = 10,                       // chip select on feather (rf95module) CS
  .rxtx = LMIC_UNUSED_PIN,
  .rst = 5,                       // reset pin
  .dio = {2, 3, LMIC_UNUSED_PIN}, // assumes external jumpers [feather_lora_jumper]
```

## Payload Format

The Payload is encoded as byte array.

| byte | content |
| ---- | ------- |
| 0..1 | temperature (*100) |
| 2..3 | humidity (*100) |
| 4..8 | barometric pressure |

To decode the values add this code in the TTM Console as decoder under Paload Formats.

```
function Decoder(bytes, port) {
  temp = ((bytes[0]) << 8)
              + ((bytes[1]));
  hum = ((bytes[2]) << 8)
              + ((bytes[3]));
  pres = ((bytes[4]) << 24)
              + ((bytes[5]) << 16)
              + ((bytes[6]) << 8)
              + ((bytes[7]));

  return {
    pressure: ( pres / 100 ),
    temperature: ( temp / 100 ),
    humidity: ( hum / 100 )
  };
}
```

## Datasheets

- [ATmega328/P](http://ww1.microchip.com/downloads/en/devicedoc/atmel-42735-8-bit-avr-microcontroller-atmega328-328p_datasheet.pdf)
- [Bosch BME280](https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280_DS002.pdf)
- [RFM95/96/97/98(W) - Low Power Long Range Transceiver Module](http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf)

## Links

1. [TinyLoRa-BME280 v1.1](https://github.com/ClemensRiederer/TinyLoRa-BME280_v1.1)

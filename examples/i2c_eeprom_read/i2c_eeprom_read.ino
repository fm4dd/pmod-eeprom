/*
 * I2C EEPROM Read
 *
 * Reads the value of each byte of the I2C EEPROM and prints it
 * to the computer.
 * This example code is in the public domain.
 */

#include "Wire.h"
#include "I2C_eeprom.h"

#define i2c_address 0x50

// start reading from the first byte (address 0) of the EEPROM
int address = 0;
byte value;
uint32_t start, diff, totals = 0;

// Initialize using i2c_address, and eeprom size.  
I2C_eeprom ee(0x50, I2C_DEVICESIZE_24LC512);

void setup() {
  // initialize serial and wait for port to open:
  
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
  ee.begin();
  if (! ee.isConnected()) {
    Serial.println("ERROR: Can't find eeprom\nstopped...");
    while (1);
  }
  Serial.println("EEPROM found");
  Serial.println("TEST: determine size");
  start = micros();
  uint32_t size = ee.determineSize();
  diff = micros() - start;
  Serial.print("TIME: ");
  Serial.println(diff);
  if (size > 0) {
    Serial.print("SIZE: ");
    Serial.print(size);
    Serial.println(" Bytes");
  } else if (size == 0) {
    Serial.println("WARNING: Can't determine eeprom size");
  }
  else {
    Serial.println("ERROR: Can't find eeprom\nstopped...");
    while (1);
  }
   Serial.println("Dump first 128 bytes:");
  dumpEEPROM(0, 128);
}

void loop() {
}

void dumpEEPROM(uint16_t memoryAddress, uint16_t length) {
  const int BLOCK_TO_LENGTH = 16;
  Serial.println("------------------------------------------------------"); 
  Serial.print(" reg   ");
  for (int x = 0; x < 16; x++)
  {
    if (x != 0) Serial.print("  ");
    Serial.print(x,HEX);
  }
  Serial.println();
  Serial.println("------------------------------------------------------"); 

  // block to defined length
  memoryAddress = memoryAddress / BLOCK_TO_LENGTH * BLOCK_TO_LENGTH;
  length = (length + BLOCK_TO_LENGTH - 1) / BLOCK_TO_LENGTH * BLOCK_TO_LENGTH;

  byte b = ee.readByte(memoryAddress);
  for (unsigned int i = 0; i < length; i++){
    char buf[6];
    if (memoryAddress % BLOCK_TO_LENGTH == 0){
      if (i != 0) Serial.println();
      sprintf(buf, "[%03x] ", memoryAddress);
      Serial.print(buf);
    }
    sprintf(buf, "%02d", b);
    Serial.print(buf);
    b = ee.readByte(++memoryAddress);
    Serial.print(" ");
  }
  Serial.println();
}

// END OF FILE

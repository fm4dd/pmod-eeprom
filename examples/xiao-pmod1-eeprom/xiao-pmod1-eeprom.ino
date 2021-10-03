// --------------------------------------
// xiao-pmod1-i2c
//
// A modified i2c-scanner.ino program to test
// the I2C EEPROM PMOD connected to a PMOD2RPI
// PMOD interface board's PMOD1
//
// This sketch tests for response on the I2C
// device address between 0x50 and 0x57
//
// Type 6A EEPROM PMOD connected to PMOD1
// PMOD1 XIAO I2C pin assignment (SW3-1 OFF)
// -----------------------------------------
// pmod1-1 = XIAO gpio D7  / pin J4-1
// pmod1-2 = XIAO gpio D10 / pin J4-4
// pmod1-3 = XIAO gpio D5  / pin J2-6
// pmod1-4 = XIAO gpio D4  / pin J2-5
//
// I2C24IO PMOD connected to PMOD1 upper row
// PMOD1 XIAO I2C pin assignment SW3 ON/OFF
// -----------------------------------------
// pmod1-7  = XIAO gpio D3  / pin J2-4
// pmod1-8  = XIAO gpio D2  / pin J2-3
// pmod1-9  = XIAO gpio D9  / pin J4-3 = SCL
// pmod1-10 = XIAO gpio D8  / pin J4-2 = SDA
// -----------------------------------------
// Note:
// PMOD2RPI SW3 flips pmod1-3/4 with pmod1-7/8 

#include <Wire.h>
#include "I2C_eeprom.h"
#define SERIAL_OUT Serial
byte addr1 = 0x50;
byte addr2 = 0x52;
byte addr = 0x0;
I2C_eeprom ee(0x50, I2C_DEVICESIZE_24LC512);
  
void setup() {
  Wire.begin();
  Serial.begin(9600);
  while (!Serial) {} // wait for serial port to connect. Needed for native USB port only
  Serial.println("xiao-pmod1-eeprom identification");
  byte error;
  
  Serial.print("Test address 0x50: ");
  Wire.beginTransmission(addr1);
  error = Wire.endTransmission();
  if (error == 0){
    Serial.println("ACK - I2C device found at address 0x50");
    addr = addr1;
  }
  else if (error==4) {
    Serial.println("Unknown error at address 0x50");
  }
  else Serial.println("No device");
  delay(200);
  Serial.print("Test address 0x52: ");
  Wire.beginTransmission(addr2);
  error = Wire.endTransmission();
  if (error == 0){
    Serial.println("ACK - I2C device found at address 0x52");
    addr = addr2;
  }
  else if (error==4) {
    Serial.println("Unknown error at address 0x52");
  }
  else Serial.println("No device");
  if (addr == 0x0) {
    Serial.println("No device found, exiting program...");
    exit(0);
  }
  Serial.print("xiao-pmod1-eeprom found EEPROM PMOD at 0x");
  Serial.print(addr, HEX);
  Serial.println();

    ee.begin();
  if (! ee.isConnected())
  {
    Serial.println("ERROR: Can't find eeprom\nstopped...");
    while (1);
  }
  uint32_t start, diff, totals = 0;
  SERIAL_OUT.print("I2C eeprom library: ");
  SERIAL_OUT.print(I2C_EEPROM_VERSION);
  SERIAL_OUT.println("\n");

  SERIAL_OUT.println("\nTEST: determine size");
  start = micros();
  uint32_t size = ee.determineSize();
  diff = micros() - start;
  SERIAL_OUT.print("TIME: ");
  SERIAL_OUT.println(diff);
  if (size > 0)
  {
    SERIAL_OUT.print("SIZE: ");
    SERIAL_OUT.print(size);
    SERIAL_OUT.println(" Bytes");
  } else if (size == 0)
  {
    SERIAL_OUT.println("WARNING: Can't determine eeprom size");
  }
  else
  {
    SERIAL_OUT.println("ERROR: Can't find eeprom\nstopped...");
    while (1);
  }

  SERIAL_OUT.println("\nTEST: 64 byte page boundary writeBlock");
  ee.setBlock(0, 0, 128);
  dumpEEPROM(0, 128);
  char data[] = "11111111111111111111";
  ee.writeBlock(60, (uint8_t*) data, 10);
  dumpEEPROM(0, 128);


  SERIAL_OUT.println("\nTEST: 64 byte page boundary setBlock");
  ee.setBlock(0, 0, 128);
  dumpEEPROM(0, 128);
  ee.setBlock(60, '1', 10);
  dumpEEPROM(0, 128);


  SERIAL_OUT.println("\nTEST: 64 byte page boundary readBlock");
  ee.setBlock(0, 0, 128);
  ee.setBlock(60, '1', 6);
  dumpEEPROM(0, 128);
  char ar[100];
  memset(ar, 0, 100);
  ee.readBlock(60, (uint8_t*)ar, 10);
  SERIAL_OUT.println(ar);


  SERIAL_OUT.println("\nTEST: write large string readback in small steps");
  ee.setBlock(0, 0, 128);
  char data2[] = "0000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999A";
  ee.writeBlock(10, (uint8_t *) &data2, sizeof(data2));
  dumpEEPROM(0, 128);
  for (int i = 0; i < 100; i++)
  {
    if (i % 10 == 0 ) SERIAL_OUT.println();
    SERIAL_OUT.print(' ');
    SERIAL_OUT.print(ee.readByte(10 + i));
  }
  SERIAL_OUT.println();


  SERIAL_OUT.println("\nTEST: check almost endofPage writeBlock");
  ee.setBlock(0, 0, 128);
  char data3[] = "6666";
  ee.writeBlock(60, (uint8_t *) &data3, sizeof(data3));
  dumpEEPROM(0, 128);

  // SERIAL_OUT.println();
  // SERIAL_OUT.print("\nI2C speed:\t");
  // SERIAL_OUT.println(16000/(16+2*TWBR));
  // SERIAL_OUT.print("TWBR:\t");
  // SERIAL_OUT.println(TWBR);
  // SERIAL_OUT.println();

  totals = 0;
  SERIAL_OUT.print("\nTEST: timing writeByte()\t");
  start = micros();
  ee.writeByte(10, 1);
  diff = micros() - start;
  SERIAL_OUT.print("TIME: ");
  SERIAL_OUT.println(diff);
  totals += diff;

  SERIAL_OUT.print("TEST: timing writeBlock(50)\t");
  start = micros();
  ee.writeBlock(10, (uint8_t *) &data2, 50);
  diff = micros() - start;
  SERIAL_OUT.print("TIME: ");
  SERIAL_OUT.println(diff);
  totals += diff;

  SERIAL_OUT.print("TEST: timing readByte()\t\t");
  start = micros();
  ee.readByte(10);
  diff = micros() - start;
  SERIAL_OUT.print("TIME: ");
  SERIAL_OUT.println(diff);
  totals += diff;

  SERIAL_OUT.print("TEST: timing readBlock(50)\t");
  start = micros();
  ee.readBlock(10, (uint8_t *) &data2, 50);
  diff = micros() - start;
  SERIAL_OUT.print("TIME: ");
  SERIAL_OUT.println(diff);
  totals += diff;

  SERIAL_OUT.print("TOTALS: ");
  SERIAL_OUT.println(totals);
  totals = 0;

  // same tests but now with a 5 millisec delay in between.
  delay(5);

  SERIAL_OUT.print("\nTEST: timing writeByte()\t");
  start = micros();
  ee.writeByte(10, 1);
  diff = micros() - start;
  SERIAL_OUT.print("TIME: ");
  SERIAL_OUT.println(diff);
  totals += diff;

  delay(5);

  SERIAL_OUT.print("TEST: timing writeBlock(50)\t");
  start = micros();
  ee.writeBlock(10, (uint8_t *) &data2, 50);
  diff = micros() - start;
  SERIAL_OUT.print("TIME: ");
  SERIAL_OUT.println(diff);
  totals += diff;

  delay(5);

  SERIAL_OUT.print("TEST: timing readByte()\t\t");
  start = micros();
  ee.readByte(10);
  diff = micros() - start;
  SERIAL_OUT.print("TIME: ");
  SERIAL_OUT.println(diff);
  totals += diff;

  delay(5);

  SERIAL_OUT.print("TEST: timing readBlock(50)\t");
  start = micros();
  int xx = ee.readBlock(10, (uint8_t *) &data2, 50);
  diff = micros() - start;
  SERIAL_OUT.print("TIME: ");
  SERIAL_OUT.println(diff);
  totals += diff;

  SERIAL_OUT.print("TOTALS: ");
  SERIAL_OUT.println(totals);
  totals = 0;

  // does it go well?
  SERIAL_OUT.println(xx);

  SERIAL_OUT.println("\tDone...");
}
void loop(){}

void dumpEEPROM(uint16_t memoryAddress, uint16_t length)
{
  const int BLOCK_TO_LENGTH = 10;
  
  SERIAL_OUT.print("\t  ");
  for (int x = 0; x < 10; x++)
  {
    if (x != 0) SERIAL_OUT.print("    ");
    SERIAL_OUT.print(x);
  }
  SERIAL_OUT.println();

  // block to defined length
  memoryAddress = memoryAddress / BLOCK_TO_LENGTH * BLOCK_TO_LENGTH;
  length = (length + BLOCK_TO_LENGTH - 1) / BLOCK_TO_LENGTH * BLOCK_TO_LENGTH;

  byte b = ee.readByte(memoryAddress);
  for (unsigned int i = 0; i < length; i++)
  {
    char buf[6];
    if (memoryAddress % BLOCK_TO_LENGTH == 0)
    {
      if (i != 0) SERIAL_OUT.println();
      sprintf(buf, "%05d", memoryAddress);
      SERIAL_OUT.print(buf);
      SERIAL_OUT.print(":\t");
    }
    sprintf(buf, "%03d", b);
    SERIAL_OUT.print(buf);
    b = ee.readByte(++memoryAddress);
    SERIAL_OUT.print("  ");
  }
  SERIAL_OUT.println();
}

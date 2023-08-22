#include <Arduino.h>
#include <hardware_abstraction.h>

void __gnat_last_chance_handler(void)
{
  while (1)
    ;
}

void blink(uint32_t n)
{

  for (int i = 0; i < n; i++)
  {
    digitalWrite(LED_BUILTIN, HIGH); // turn the LED on (HIGH is the voltage level)
    delay(100);                      // wait for a second
    digitalWrite(LED_BUILTIN, LOW);  // turn the LED off by making the voltage LOW
    delay(100);
  }
}

void setup()
{
  // put your setup code here, to run once:

  pinMode(LED_BUILTIN, OUTPUT);

  /* Call Ada elaboration code */
  // Test_Cinit();
}

void loop()
{
  // put your main code here, to run repeatedly:

  mainLoop(); // Ada main loop
}

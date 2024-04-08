#include <avr/io.h>
#include <util/delay.h>

int main(void) {
  // PORTD: Maps to Arduino digital pins 0 to 7.
  // DDRD: Data Direction Register for Port D, which controls the direction
  // (I/O) of each pin in Port D. Set pin 3 (D3) as an output.
  DDRD |= (1 << DDD3);

  while (1) {
    // Set the pin 3 (D3) to HIGH.
    PORTD |= (1 << PORTD3);

    // Light the LED for 10 seconds.
    _delay_ms(10000);

    // Set pin 3 (D3) to LOW.
    PORTD &= ~(1 << PORTD3);

    // Turn off the LED for 1 second.
    _delay_ms(1000);
  }

  return 0;
}

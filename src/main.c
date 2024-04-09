#include <avr/io.h>
#include <util/delay.h>

int main(void) {
  int blinkCount = 1;

  // PORTD: Maps to Arduino digital pins 0 to 7.
  // DDRD: Data Direction Register for Port D, which controls the direction
  // (I/O) of each pin in Port D. Set pin 3 (D3) as an output.
  DDRD |= (1 << DDD3);

  while (1) {
    // Set the pin 3 (D3) to HIGH.
    PORTD |= (1 << PORTD3);

    if (blinkCount == 10) {
      // Turn on the light for 5 seconds.
      _delay_ms(5000);

      // Reset the state of blink count.
      blinkCount = 1;
    } else {
      // Turn the light for 500 milliseconds.
      _delay_ms(500);

      // Increment the blink count state.
      blinkCount += 1;
    }

    // Set pin 3 (D3) to LOW.
    PORTD &= ~(1 << PORTD3);

    // Turn off the LED for 500 milliseconds.
    _delay_ms(500);
  }

  return 0;
}

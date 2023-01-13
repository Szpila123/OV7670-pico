#include "pico/stdlib.h"
#include "pico/binary_info.h"

const uint LED_PIN = 25;

int main()
{
    bi_decl(bi_program_description("OV7670 camera module"));
    bi_decl(bi_1pin_with_name(LED_PIN, "LED pin"));

    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);
    while (true)
    {
        gpio_put(LED_PIN, 0);
        sleep_ms(250);
        gpio_put(LED_PIN, 1);
        sleep_ms(1000);
    }
}
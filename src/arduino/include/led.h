#ifndef LED_H
#define LED_H
#include <Arduino.h>

class LED {
public:
	LED(uint8_t red_pin, uint8_t green_pin, uint8_t blue_pin, bool on = true)
		: m_red(0), m_green(0), m_blue(0), m_brightness(1.0), m_on(on),
		m_red_pin(red_pin), m_green_pin(green_pin), m_blue_pin(blue_pin)
	{
		pinMode(m_red_pin, OUTPUT);
		pinMode(m_green_pin, OUTPUT);
		pinMode(m_blue_pin, OUTPUT);
	}

	void red(uint8_t value){m_red = value;}
	uint8_t red(){return m_red;}
	void green(uint8_t value){m_green = value;}
	uint8_t green(){return m_green;}
	void blue(uint8_t value){m_blue = value;}
	uint8_t blue(){return m_blue;}

	void brightness(uint8_t value){m_brightness = value;}

	void setColor(uint8_t red, uint8_t green, uint8_t blue){
		m_red = red;
		m_green = green;
		m_blue = blue;
	}
	void setColor(uint8_t value){this->setColor(value, value, value);}

	void turnOn(){m_on = true;}
	void turnOff(){m_on = false;}
	void toggle(){m_on = !m_on;}
	bool on(){return m_on;}

	uint8_t * getCurrentState(){
		static uint8_t color[3];
		color[0] = this->red()*m_on*m_brightness;
		color[1] = this->green()*m_on*m_brightness;
		color[2] = this->blue()*m_on*m_brightness;

		return color;
	}

	void apply(){
		uint8_t * state = this->getCurrentState();
		analogWrite(m_red_pin, state[0]);
		analogWrite(m_green_pin, state[1]);
		analogWrite(m_blue_pin, state[2]);
	}

private:
	uint8_t m_red;
	uint8_t m_green;
	uint8_t m_blue;

	double m_brightness;
	bool m_on;

	uint8_t m_red_pin;
	uint8_t m_green_pin;
	uint8_t m_blue_pin;
};

#endif

#include <Arduino.h>
#include <ESP8266WiFi.h>
#include<ESP8266mDNS.h>
#include <ESPAsyncWebServer.h>


#ifndef LED_BUILTIN_AUX
#define LED_BUILTIN_AUX LED_BUILTIN
#endif


// user defined settings
#if __has_include("configuration.h")
#	include <configuration.h>
#else
#	include <configuration_default.h>
#endif


// data stored in flash memory
#include "data.h"
#include "led.h"


// global variables
AsyncWebServer server(PORT);
LED led(RED, GREEN, BLUE, INIT_ON);

#include <Arduino.h>
#include <ESP8266WiFi.h>
#include<ESP8266mDNS.h>
#include <ESPAsyncWebServer.h>


// user defined settings
#if __has_include("configuration.h")
#	include <configuration.h>
#else
#	include <configuration_default.h>
#endif


// data stored in flash memory
#include "data.h"


// global variables
AsyncWebServer server(PORT);

#include <Controller.h>

// REMEMBER: Inverted logic -> LOW is 1, HIGH is 0


void send_state(AsyncWebServerRequest *r){
	char buffer[15];
	sprintf(buffer, "{\"on\": %s}", strip.on() ? "true" : "false");
	r->send(200, "application/json", buffer);
}

void setup() {
	// hardware setup
	Serial.begin(SERIAL_BAUD);
	strip.setColor(INIT_COLOR);
	pinMode(LED_BUILTIN_AUX, OUTPUT);

	digitalWrite(RED, HIGH); // default: led on
	digitalWrite(GREEN, HIGH); // default: led on
	digitalWrite(BLUE, HIGH); // default: led on

	// wifi setup
	WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
	Serial.print("Connecting WiFi");
	while(WiFi.status() != WL_CONNECTED){
		// wait for WiFi to be connected
		Serial.print(".");
		digitalWrite(LED_BUILTIN_AUX, !digitalRead(LED_BUILTIN_AUX));
		delay(500);
	}

	// signal for wifi connected (inverted logic for internal leds!)
	digitalWrite(LED_BUILTIN_AUX, LOW); // light up built in once
	delay(100);
	digitalWrite(LED_BUILTIN_AUX, HIGH); // turn off built in

	Serial.println();
	Serial.print("IP: "); Serial.println(WiFi.localIP());
	Serial.print("MAC: "); Serial.println(WiFi.macAddress());

	if (MDNS.begin(HOSTNAME, WiFi.localIP()))
		Serial.println("mDNS active under http://" + String(HOSTNAME) + ".local/");


	server.on("/", [](AsyncWebServerRequest *r){
		r->send_P(200, "text/html", html_index);
	});


	// serve assets
	server.on("/power.svg", [](AsyncWebServerRequest *r){
		r->send_P(200, "image/svg+xml", icon_power);
	});

	// serve api
	server.on("/api/status", HTTP_GET, [](AsyncWebServerRequest *r){ // get current stats
		send_state(r);
	});

	server.on("/api/toggle", HTTP_PUT, [](AsyncWebServerRequest *r){ // toggle LEDs
		strip.toggle();
		strip.apply();
		send_state(r);
	});

	server.begin();
}

void loop() {}

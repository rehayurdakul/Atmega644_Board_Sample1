

#define GPS_ENABLE_PIN   0  
#include <avr/wdt.h>
#include <SoftwareSerial.h>
#define INSIST   1        // insist to get GPS info
#define QUERY                             2        // just process NMEA word
#define GPSDataPin                        1 

#define LED13                          13         // GSM/GPRS Ready
#define LED22                          22         // GPS Valid        
#define LED23                          23         // Data Sending..
#define GSM_IGN                        14         // GSM Module pin

SoftwareSerial gpsSerial(GPSDataPin, GPSDataPin);

void setup(){
  Serial.begin(9600);
}

void loop(){
  
}

void gpsInit() {
  func_called("gpsInit") ;
  Serial.println("Init GPS Unit");
  digitalWrite(GPS_ENABLE_PIN, LOW); 
  delay(2000);
  digitalWrite(GPS_ENABLE_PIN, HIGH); 
  delay(2000);
  gpsSerial.begin(9600);
}

void gps_disable() {
  func_called("gps_disable") ;
  Serial.println("Disable GPS Unit");
  digitalWrite(GPS_ENABLE_PIN, LOW); 
}



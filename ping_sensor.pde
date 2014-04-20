/*

* created by Rui Santos, http://randomnerdtutorials.wordpress.com
*  Ultrasonic sensor 
* 2013
*/

int trigPin = 5;    //Trig 
int echoPin = 4;   //Echo 



int duration;
int distance;

void setup() {
  //Serial Port
  Serial.begin (9600);
 
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);

}

void loop() {
// Give a short LOW pulse beforehand to ensure a clean HIGH pulse:
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(1000);
  digitalWrite(trigPin, LOW);
  duration = pulseIn(echoPin, HIGH);
   
   /*the speed of the sound is 340 m/s or 29 microseconds per centimeter.
  The ping travels out and back, so to find the distance of the object we 
  take the half of the distance travelled.*/
  distance = duration/29.1/ 2;
 
// print the distance in CM
  Serial.print(distance);
  Serial.print(" cm");
  Serial.println();
  
  delay(600);
  //wait 6sec to reload
}

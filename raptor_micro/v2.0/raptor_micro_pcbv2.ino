#define IR1 A3
#define IR2 A2
#define IR3 A6
#define IR4 A1
#define IR5 A0
#define IR6 A7
#define IR7 A8
#define IR8 A9
#define IR 3

#define STBY 
#define AI1 7
#define AI2 16
#define PWMA 10
#define BI1 14
#define BI2 15
#define PWMB 5


#include <QTRSensors.h>
QTRSensors qtr;
uint16_t IR[8];

int forward=120;
float kp=.08;
float ki=0.03;
float kd=0.0;
int p,d;
int i=0;
int p_old=0;
int u;

void setup()
{
  // configure the sensors
  qtr.setTypeAnalog();
  qtr.setSensorPins((const uint8_t[]){IR1, IR2, IR3, IR4, IR5, IR6, IR7, IR8}, 8);

  Serial.begin(9600);
}

void loop()
{
  qtr.read(IR); // read raw sensor values

  /* uncomment to show sensor values via serial monitor

  for (int i=0 ; i<8; i++)
  {
    Serial.print(IR[i]);
    Serial.print(" ");
  }
  Serial.println();

  */
  
  p = -4*IR[0]-3*IR[1]-2*IR[2]-IR[3]+IR[4]+2*IR[5]+3*IR[6]+4*IR[7];

  i=i+p;
  d=p-p_old;
  p_old=p;
  
  if ((p*i)<0) i=0;  // integral windup

  u=kp*p+ki*i+kd*d;
  drive(forward+u,forward-u);
 
}

void drive(int speedl, int speedr)
{
  digitalWrite(STBY, HIGH); //disable standby
  
// evitar valores no válidos para el PWM
  speedl=constrain(speedl,-255,255);
  speedr=constrain(speedr,-255,255);
  
// poner valores a los pines
  digitalWrite(AIN1, speedl>=0);
  digitalWrite(AIN2, speedl<0);
  analogWrite(PWMA, abs(speedl));
  
  digitalWrite(BIN1, speedr<0);
  digitalWrite(BIN2, speedr>=0);
  analogWrite(PWMB, abs(speedr));
   

// followline PID algorithm for Bricolabs Raptor robot
// Arduino Nano, TA6586 x2 driver, Pololu QTR-8 sensor

// TA6586 driver pinout
const int FI1 = 6; //fOrward input 1 (left)
const int BI1 = 7; //backward input 1
const int FI2 = 10;
const int BI2 = 11;

// Pololu QTR-8A analog array readout
#include <QTRSensors.h>
QTRSensorsAnalog qtra((unsigned char[]) {A0, A1, A2, A3, A4, A5, A6, A7}, 8);
unsigned int IR[8];

// parameters and variables for non linear PID
const int vmin=80;
const int vmax=150;
const float kp=.015;
const float ki=0.0003;
const float kd=0.2;
const float kv=0.07;
int p,d,u,vbase;
long i=0;
int p_old=0;

void setup() {
  // put your setup code here, to run once:
  pinMode(FI1,OUTPUT);
  pinMode(BI1,OUTPUT);
  pinMode(FI2,OUTPUT);
  pinMode(BI2,OUTPUT);
}

void loop()
{
  qtra.read(IR); // read raw sensor values
  
  p = -7*IR[0]-5*IR[1]-3*IR[2]-IR[3]+IR[4]+3*IR[5]+5*IR[6]+7*IR[7];
  i=i+p;
  d=p-p_old;
  p_old=p;
  if ((p*i)<0) i=0;  // integral windup

  u=kp*p+ki*i+kd*d;
  vbase=vmin+(vmax-vmin)*exp(-kv*abs(kp*p));
  drive(vbase+u,vbase-u);
 
}

void drive(int l, int r) {
  l=constrain(l,-255,255);
  r=constrain(r,-255,255);
  
  analogWrite(FI1,l*(l>0));
  analogWrite(BI1,-l*(l<=0));
  analogWrite(FI2,r*(r>0));
  analogWrite(BI2,-r*(r<=0));
}

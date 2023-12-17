void setup() {
  // put your setup code here, to run once:
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  drive(128,128,0);

}

void drive(int l, int r, int t) {
  l=constrain(l,-255,255);
  r=constrain(r,-255,255);
  
  analogWrite(7,l*(l>0));
  analogWrite(6,-l*(l<=0));
  analogWrite(10,r*(r>0));
  analogWrite(11,-r*(r<=0));

  delay(t);
}

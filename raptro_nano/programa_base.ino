// asigna nombres a los pines de Raptor Nano
#define RIN1 5
#define RIN2 6
#define LIN1 9
#define LIN2 10

// esta parte se ejecutara solo una vez al principio
void setup() {

}

// esta parte se repetira en bucle para siempre
void loop() {
  drive(0,0,100);
}

//función de movimiento con el driver TA6586
//velocidad de las ruedas izquierda y derecha, positivo hacia delante, tiempo en milisegundos
void drive(int L, int R, int t) 
{
//iniciar el modo de los pines para los motores
  pinMode(RIN1,OUTPUT);
  pinMode(RIN2,OUTPUT);
  pinMode(LIN1,OUTPUT);
  pinMode(LIN2,OUTPUT);

// evitar valores no válidos para el PWM
  L=constrain(L,-255,255);
  R=constrain(R,-255,255);

// poner valores a los pines
  analogWrite(RIN1, L*(L>0));
  analogWrite(RIN2, -L*(L<0));
  analogWrite(LIN1, R*(R>0));
  analogWrite(LIN2, -R*(R<0));
  delay(t);
}

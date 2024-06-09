// asigna nombres a los pines de Raptor Nano
#define LIN1 6
#define LIN2 5
#define RIN1 9
#define RIN2 10

// esta parte se ejecutara solo una vez al principio
void setup() {

}

// esta parte se repetira en bucle para siempre
void loop() {
  drive(50,0,100);
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
  analogWrite(LIN1, L*(L>0));
  analogWrite(LIN2, -L*(L<0));
  analogWrite(RIN1, R*(R>0));
  analogWrite(RIN2, -R*(R<0));
  delay(t);
}

// asigna nombres a los pines de Raptor Nano
#define BIN2 6
#define BIN1 5
#define AIN1 10
#define AIN2 9

// esta parte se ejecutara solo una vez al principio
void setup() {

}

// esta parte se repetira en bucle para siempre
void loop() {
  drive(50,50,100);
}

//función de movimiento con el driver TA6586
//velocidad de las ruedas izquierda y derecha, positivo hacia delante, tiempo en milisegundos
void drive(int L, int R, int t) 
{
//iniciar el modo de los pines para los motores
  pinMode(AIN1,OUTPUT);
  pinMode(AIN2,OUTPUT);
  pinMode(BIN1,OUTPUT);
  pinMode(BIN2,OUTPUT);

// evitar valores no válidos para el PWM
  L=constrain(L,-255,255);
  R=constrain(R,-255,255);

// poner valores a los pines
  digitalWrite(AIN1, L<0);
  analogWrite(AIN2, L+255*(L<0));
  digitalWrite(BIN1, R<0);
  analogWrite(BIN2, R+255*(R<0));
  delay(t);
}

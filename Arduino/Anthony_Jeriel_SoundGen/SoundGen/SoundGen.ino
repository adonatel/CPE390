
void setup() {
  // put your setup code here, to run once:
}

void loop() {
  // put your main code here, to run repeatedly:
  int n=264000;
  for (int i = 0; i < n; i++) {
   int x=128 + 128*sin(110*2*3.14*i)+128*sin(132*2*3.14*i)+128*sin(165*2*3.14*i);
   analogWrite(DAC0,x);
   delayMicroseconds(500);
}
  
}

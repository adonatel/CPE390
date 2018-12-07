void setup() {
  // put your setup code here, to run once:
  pinMode(5, OUTPUT);
  pinMode(3, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(digitalread(3)==LOW)
  {
    digitalWrite(5, HIGH);
    delay(200);                      
    while(digitalread(3)==LOW)
    {
      digitalWrite(5, LOW);
    }
    delay(200);
  }
  else
  {
    digitalWrite(5,LOW);
  }
}

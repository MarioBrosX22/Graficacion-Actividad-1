float angulo = 0;
float intensidad = 0;
boolean aumentar = true;
void setup(){
  size(400, 400);
}

void draw(){
  float rojo = random(0, 255);
  float verde = random(0, 255);
  float azul = random(0, 255);
  background(intensidad, 255, 255);
  stroke(intensidad, 0,0);
  fill(rojo, verde, azul);
  translate(200, 200);
  rotate(angulo);
  rect(50, 50, 100 , 100);
  angulo += 0.01;
  
  if (intensidad == 255){
    aumentar = false;
  }else if (intensidad == 0 ){
    aumentar = true;
  }
  
  if (aumentar ){
      intensidad += 1;
  }else {
    intensidad -= 1;
  }
}

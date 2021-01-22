
float valStart = 0;
float valEnd = 500;

float animLength = 1;
float animPlayheadTime = 0;
boolean isTweenPlaying = false;

float previousTimestamp = 0;



void setup(){
  
  size(500, 500);
  
}

void draw(){
  
  background(128); 
  
  float currentTimestamp = millis()/1000.0;
  float dt = currentTimestamp - previousTimestamp;
  
  previousTimestamp = currentTimestamp;
  
 if(isTweenPlaying){
   
   animPlayheadTime += dt;
   if(animPlayheadTime > animLength){
     isTweenPlaying = false;
     animPlayheadTime = animLength;
   }
  
 }
  
  //percent
  float p = animPlayheadTime / animLength;
  
  // manipulate p
  // p = p * P;
  //p = 1 - (1- p) * (1 - p);// bends the curve down
  p = p * p * (3 - 2 * p);
  
  float x = lerp(valStart, valEnd, p);
  
  ellipse(x, height/2.0, 20, 20);
  
}
void mousePressed(){
  
  animPlayheadTime = 0;
  isTweenPlaying = true;
  
}

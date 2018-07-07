int a = 0;
int b = 0;
int c = 400;

int x = 1;
int y = 250;

void setup(){ 
  size(1000,500);
  //background(0);
  frameRate(60);
}
void draw(){
   background(0);
   //for (int i = 0; i > 1; i++){
     fill(0,0,255);
     rect(a,b,100,100);
     fill(0,255,0);
     rect(a,c,100,100);
     a += 1;
     if (a == 1000){
     b += 1;
     c += 1;
     a = 0;
     }
     //player (the bird) 
     
     if (keyPressed){
       if (key == 'a'){
         for (int i = 0; i < 10; i++){
           y += -2;
         }
       }
     }else{
            y += 2;
     }
     
     if (y < 0 || y > 500){
       y = 250;
     }
     fill(255,0,0);
     rect(x,y,10,10);
     
     if (x == a+100 || y == b+100){
       println ("game over");
     }
     
  //}
   /*if (mouseButton ==RIGHT){
     background(0);
   }*/
}

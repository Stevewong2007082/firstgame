int a = 1000;
int a2 = 1500;
int b = 0;
int c = 300;

int x = 1;
int y = 250;
int k = 0;

void setup(){ 
  size(1000,500);
  //background(0);
  frameRate(60);
}
void draw(){
   background(0);
   println(k);
   //player (the bird) 
   if (keyPressed){
     if (key == ' '){               //player only press space once and get one response
       k += 1;  
     }
     if (k == 1){
      for (int i = 0; i < 20; i++){
                y += -4;
              }  
     }
   }else{
           y += 2;
   }
    if (keyPressed == false){
       k = 0; 
   }
     
   //reset the bird
   if (y < 0 || y > 500){
     y = 250;
   }
   fill(255,0,0);
   rect(x,y,10,10);
    
   
   //the block
   // block one
   a -= 2;
   fill(0,0,255);
   rect(a,b,100,200);
   fill(0,255,0);
   rect(a,c,100,200);
   if (a < -100){
    a = 1000; 
   }
   //block two
   a2 -= 2;
   fill(0,0,255);
   rect(a2,b,100,200);
   fill(0,255,0);
   rect(a2,c,100,200);
   if (a2 < -100){
     a2 = 1000;
   }
     

}

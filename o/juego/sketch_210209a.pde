Personaje player;
PVector G = new PVector(0,0.5);
PVector UPP = new PVector(0,-2.5);
void setup(){
  size(900, 700);
  player = new Personaje();
 }
 
 void draw(){
   background(0);
   aplicarFuerzas();  
   player.acelerar(G);
   player.mover();
   player.mostrar();
 }

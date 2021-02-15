Personaje player;
PVector G = new PVector(0,0.3);
PVector UPP = new PVector(0,-1);

columna[] columnas= new columna[8];
void setup(){
  size(900, 700);
  player = new Personaje();
   
   for(int i = 0; i<8; i++){
    columnas[i] = new columna(width + 220*i);
   }
 }
 
 void draw(){
   background(0);
   aplicarFuerzas();
   
   ActualizarColumnas();
   
   player.acelerar(G);
   player.mover();
   player.mostrar();
   
   chequearColision();
 }

Personaje player;
PVector G = new PVector(0,0.5);
PVector UPP = new PVector(0,-2.5);

Columna [] columnas= new Columna[5];
void setup(){
  size(900, 700);
  player = new Personaje();
   
   for(int i = 0; i<5; i++){
    columnas[i] = new Columna(width + 130*i);
   }
 }
 
 void draw(){
   background(0);
   aplicarFuerzas();
   
   ActualizarColumnas();
   
   player.acelerar(G);
   player.mover();
   player.mostrar();
 }

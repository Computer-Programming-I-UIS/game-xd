Personaje player;
PVector G = new PVector(0,0.3);
PVector UPP = new PVector(0,-1);

columna[] columnas= new columna[8];

int muerte = 0;
void setup(){
  size(900, 700);
  player = new Personaje();
   
   for(int i = 0; i<8; i++){
    columnas[i] = new columna(width + 240*i);
   }
 }
 
 void draw(){
   muerte = max(muerte-1, 0);
   background(muerte, 0, 255);
   aplicarFuerzas();
   
   ActualizarColumnas();
   
   player.acelerar(G);
   player.mover();
   player.mostrar();
   
   chequearColision();
 }

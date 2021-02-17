Personaje player;
PVector G = new PVector(0,0.3);
PVector UPP = new PVector(0,-1);
int w=0;
columna[] columnas= new columna[6];

int muerte = 0;
void setup(){
  size(900, 700);
  player = new Personaje();
   
   for(int i = 0; i<6; i++){
    columnas[i] = new columna(width + 240*i);
   }
 }
 
 void draw(){
   if(w==1){
   muerte = max(muerte-1, 0);
   background(muerte, 0, 255);
   aplicarFuerzas();
   
   ActualizarColumnas();
   
   player.acelerar(G);
   player.mover();
   player.mostrar();
   
   chequearColision();
   }else if(w==0){
    menu(); 
   }
 }
 void menu(){
  background(255,0,255); 
  text("Presiona J para jugar", 200,100);
  text("Presiona C para los creditos", 200,200);
   
 }
 void keyPressed(){
  if(w==0){
   switch(keyCode){
     case 'p':
     case 'P':
       w=1;
       break;
     case 'C':
     case 'c':
       w=2;
       break;
     
     
   }
    
  }
   
 }

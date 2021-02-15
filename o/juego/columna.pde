class columna {
Rect obs;
Rect esp;

columna(int P_colum){
  obs= new Rect(P_colum);
  esp = new Rect(P_colum, height/2);
}
   
   void mover(){
   obs.mover();
   esp.mover();
   }
   void mostrar(){
   obs.mostrar();
   esp.mostrar();   
   
   }
   boolean SevadelaPantalla(){
     return(obs.pos.x < -100);
   }
void reaparecer () {
  obs.pos.x = width + 100;
  esp.pos.x = width + 100;
}
}

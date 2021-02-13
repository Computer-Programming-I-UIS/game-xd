class columna{
Rect obs;
Rect esp;

Columna(int P_colum){
  col= new Rect(P_colum);
  esp = new Rect(P_colum, height/2)
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
     return(obs.po.x < -100);
   }

}

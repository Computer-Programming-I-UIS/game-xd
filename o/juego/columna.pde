class columna {
  Rect obs;
  Rect esp;

  columna(int P_colum) {
    obs= new Rect(P_colum);
    esp = new Rect(P_colum, height/2);
  }

  void mover() {
    obs.mover();
    esp.mover();
  }
  void mostrar() {
    obs.mostrar();
    esp.mostrar();
  }
  boolean SevadelaPantalla() {
    return(obs.pos.x < -100);
  }
  boolean SumaPuntaje(){
   if(obs.pos.x==112 || obs.pos.x == 111){
     
     return true; 
   }else{
    return false; 
   }
    
  }
  void reaparecer () {
    
    
    obs.pos.x = width + 100;
    esp.pos.x = width + 100;
  }
}

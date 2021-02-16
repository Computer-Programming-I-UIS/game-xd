class Rect {
  PVector pos;  
  PVector vel = new PVector(-2, 0);
  int rx = 30;
  int ry;
  int tipo;

  Rect(int P_columna) {
    pos = new PVector(P_columna, height/2);
    ry = height/2;
    tipo = 1;
  }
  Rect(int P_columna, int P_fila){
    pos =  new PVector(P_columna, P_fila);
    ry= (int)random(20, 200);
    vel.y = random(1,3);
    if(random(10)<5) vel.y *=-1;
    tipo = 2;
  
  }

  
  void mover() {
    pos.add(vel);
    if ((pos.y < ry)||(pos.y >height-ry)){
      vel.y *=-1;
    }
    
  }
  void mostrar() {
    rectMode(RADIUS);
    if (tipo == 1)  {
    fill(muerte, 255, 0);
    rect(pos.x, pos.y, rx, ry);  
}
    else {
    fill(muerte, 0, 255);
    rect(pos.x, pos.y, rx, ry+30);  
}
    
  }
 }

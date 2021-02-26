class Rect {
  PVector pos;  
  PVector vel = new PVector(-5, 0);
  int rx = 30;
  int ry;
  int tipo;

  Rect(int P_columna) {
    pos = new PVector(P_columna, 0);
    ry = height;
    tipo = 1;
  }
  Rect(int P_columna, int P_fila) {
    pos =  new PVector(P_columna, P_fila);
    ry= (int)random(200, 300);
    vel.y = random(1, 3);
    if (random(10)<5) vel.y *=-1;
    tipo = 2;
  }


  void mover() {
    pos.add(vel);
    if ((pos.y < 0)||(pos.y >height - ry)) {
      vel.y *=-1;
    }
  }
  void mostrar() {
    //rectMode(RADIUS);
    if (tipo == 1) {
      fill(muerte, 255, 0);
      rect(pos.x, pos.y, rx, ry);
    } else {
<<<<<<< HEAD
      fill(#FFFFFF);
=======
      fill(muerte, 0, 255);
>>>>>>> d76181300652c15e19af01f7bb271eae80f6e79e
      rect(pos.x, pos.y, rx, ry);
    }
  }
}

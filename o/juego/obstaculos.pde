class Rect {
  PVector pos;
  PVector vel = new PVector(-3, 0);
  int rx = 30;
  int ry;
  int tipo;

  Rect(int P_columna, int P_fila) {
    pos = new PVector(P_columna, int P_fila);
    tipo = 1;
  }
  Rect(int P_columna, int P_fila);
  {
    pos =  new PVector(P_columna, int P_fila);
    ry = (int)random(100, 200);
    tipo = 2;
  }
  void mover() {
    pos.add(vel);
  }
  void mostrar() {
    if (tipo == 1)  fill(0, 255, 0);
    else fill(0);
    rectMode(RADIUS);
    rect(pos.x, pos.y, rx, ry);
  }
} 

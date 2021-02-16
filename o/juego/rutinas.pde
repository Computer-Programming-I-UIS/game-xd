void aplicarFuerzas() {
  if (keyPressed) player.acelerar (UPP);

  player.acelerar(G);
}

void ActualizarColumnas() {

  for (int i = 0; i<8; i++) {
    columnas[i]. mover();
    columnas[i]. mostrar();
    if (columnas[i].SevadelaPantalla())
      columnas[i].reaparecer();
  }
}

void chequearColision() {
  for (int i = 0; i<8; i++) {
    if (Personaje.ChocaContra(columnas[i].obs)
    && (!(Personaje.ChocaContra(columnas[i].esp)))){
      Personaje.pos.y = columnas[i].esp.pos.y;
      Personaje.vel.mult(0);
      background(255, 0, 0);
      muerte = 255;
  }
}
}

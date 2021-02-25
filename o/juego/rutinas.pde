void aplicarFuerzas() {
  if (keyPressed) player.acelerar (UPP);

  player.acelerar(G);
}

void ActualizarColumnas() {

  for (int i = 0; i<6; i++) {
    columnas[i]. mover();
    columnas[i]. mostrar();
    if (columnas[i].SevadelaPantalla())
      columnas[i].reaparecer();
  }
}
String texto = "0";
void chequearColision() {
  for (int i = 0; i< 6; i++) {
    if (player.ChocaContra(columnas[i])) {
      player.pos.y = columnas[i].esp.pos.y;
      player.vel.mult(0);
      background(255, 0, 0);
      muerte = 255;
    }
  }
}

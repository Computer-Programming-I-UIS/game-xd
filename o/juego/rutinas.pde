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
  for (int i = 0; i<5; i++) {
    if (personaje.ChocaContra(columnas[i].obs)&& (!(personaje.ChocaContra(columnas[i].esp))))={background(255, 0, 0);
  }
}
//56

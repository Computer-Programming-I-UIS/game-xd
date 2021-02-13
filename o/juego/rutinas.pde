void aplicarFuerzas() {
  if (keyPressed) player.acelerar (UPP);

  player.acelerar(G);
}

void ActualizarColumnas() {

  for (int i = 0; i<5; i++) {
    columnas[i]. mover();
    columnas[i]. mostrar();
    if((columna.SevadelaPantalla())
    columna[i].reaparecer();
  }
//aprox 44

}

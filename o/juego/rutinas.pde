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
  
    if(columnas[i].SumaPuntaje()){
      player.score+=1;
  }
  }
}
String texto = "0";
void chequearColision() {
  for (int i = 0; i< 6; i++) {
    if (player.ChocaContra(columnas[i])) {
      
      player.vidas-=1;
    }
  }
}

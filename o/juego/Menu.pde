void cambiarpantalla() {
  if (key == 'J' || key == 'j') {
    //menu=1
    //creditos=2
    //gameplay=3
    //instruciiones=4
    pantalla = 3;
    player.vidas=3;
    player.score=0;
  }
  if (key == 'C' || key == 'c') {  

    pantalla = 2;
  }
  if (key == 'M' || key =='m') {

    pantalla = 1;
  }  

  if (key == 'I' || key == 'i') {

    pantalla = 4;
  }
}

void mostrar() {

  switch(pantalla) {

  case 1:
    menu();



    break;

  case 2:
    creditos();

    break;

  case 3: 
    if (player.vidas > 0) {
      textSize(80);
      image(Fondo, 0, 0); 
      muerte = max(muerte-1, 0);
      aplicarFuerzas();

      ActualizarColumnas();
      player.acelerar(G);
      player.mover();
      player.mostrar();
      textSize(20);
      text("Puntaje: "+player.score, 100, 20);
      chequearColision();
    } else {
      background(255, 0, 0);

      image(gameover,0,0,width,height);
      textSize(25);
      textAlign(CENTER);
      text("Presione una tecla para volver", width/2, height/6*4);
      text("su puntaje es: "+player.score, width/2, 510);

    
      if (keyPressed) pantalla = 1;
      for (int i = 0; i < 6; i++) {
        columnas[i].obs.pos.x = width + 240*i;
        columnas[i].esp.pos.x = width + 240*i;
      }
    }
    break;

  case 4:
    instrucciones();


    break;
  }
}

void menu() {
  background(2, 240, 43);
  fill(0);
  textSize(80); 
  textAlign(CENTER);
  text("Survivor Ball", width/2, height/2 );
  textSize(28);
  text("Presiona j para iniciar el juego", width/2, height/2 +50);
  text("Presiona c para ver los creditos", width/2, height/2 +100 );
  text("Presiona m para volver al menu", width/2, height/2 +150 );
  text("Presiona i para ver las instrucciones", width/2, height/2 +200 );
} 
void creditos() {
  background(0);  
  String[] Acerca = loadStrings("Acerca.txt");
  for (int i = 0; i < Acerca.length; i++) {
    fill(255);
    textAlign(CENTER);
    textSize(30);
    text(Acerca[i], width/2, 100+30*(i+1));
  }
}

void instrucciones() {

  background(0);  
  String[] instrucciones = loadStrings("Instrucciones.txt");
  for (int i = 0; i < instrucciones.length; i++) {
    fill(255);
    textAlign(CENTER);
    textSize(30);
    text(instrucciones[i], width/2, 100+30*(i+1));
  }
}

Personaje player;
PVector G = new PVector(0, 0.1);
PVector UPP = new PVector(0, -0.5);
PImage Fondo;
columna[] columnas= new columna[6];
int muerte = 0;
int pantalla = 1;

boolean gameOver = false;


import ddf.minim.*;
Minim minim;
AudioPlayer cancion;

void setup() {
  
  size(900, 700);
  Fondo = loadImage("fondo.jpeg");
  
  player = new Personaje();
  
  for (int i = 0; i<6; i++) {
    columnas[i] = new columna(width + 240*i);
  }
  
  minim = new Minim(this);
  cancion = minim.loadFile("nubes_de_cristal.mp3");
  cancion.setGain(-30);
  
}

void draw() {
  
  if(!cancion.isPlaying()) {
     //cancion.play();
  }
 cambiarpantalla();
 mostrar();
}

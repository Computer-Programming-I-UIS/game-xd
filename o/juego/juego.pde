Personaje player;
PVector G = new PVector(0, 0.1);
PVector UPP = new PVector(0, -0.5);
<<<<<<< HEAD
PImage Fondo;
=======
>>>>>>> d76181300652c15e19af01f7bb271eae80f6e79e
columna[] columnas= new columna[6];
int muerte = 0;
int pantalla = 1;

<<<<<<< HEAD
boolean gameOver = false;
=======
>>>>>>> d76181300652c15e19af01f7bb271eae80f6e79e


import ddf.minim.*;
Minim minim;
AudioPlayer cancion;

void setup() {
<<<<<<< HEAD
  
=======
>>>>>>> d76181300652c15e19af01f7bb271eae80f6e79e
  size(900, 700);
  Fondo = loadImage("fondo.jpeg");
  
  player = new Personaje();
  
  for (int i = 0; i<6; i++) {
    columnas[i] = new columna(width + 240*i);
  }
  
  minim = new Minim(this);
  cancion = minim.loadFile("nubes-de-cristal.mp3");
  cancion.setGain(-30);
  
}

void draw() {
  
  if(!cancion.isPlaying()) {
     cancion.play();
  }
<<<<<<< HEAD
 cambiarpantalla();
=======
  cambiarpantalla();
>>>>>>> d76181300652c15e19af01f7bb271eae80f6e79e
 mostrar();
}

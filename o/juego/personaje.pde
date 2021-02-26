class Personaje {
  PVector pos;
  PVector vel;
  int vidas = 3;
  int score=0;
  PVector ace = new PVector(0, 0);

  int radio = 15;

  Personaje() {
    pos = new PVector(width/8, height/2);
    vel = new PVector(0, 0);
  }
  void mover () {

    vel.add(ace);
    ace.mult(0);

    pos.add(vel);
    ChocarTubosSuelo();
  }

  void ChocarTubosSuelo() {
    if ((pos.y < radio)||(pos.y >height-radio)) {
      pos.sub(vel);
      vel.mult(0);
    }
  }

  void mostrar() {
    noStroke();
    ellipseMode(RADIUS);
    fill(728, 983, 0);
    ellipse(pos.x, pos.y, radio, radio);
  }

  void acelerar(PVector F) {
    ace.add(F);
  }



  boolean ChocaContra(columna obstaculo) {

    boolean retorno = false;

    if ( (pos.x+radio) > obstaculo.esp.pos.x && (pos.x-radio) < obstaculo.esp.pos.x + obstaculo.esp.rx && ( (pos.y + radio) < obstaculo.esp.pos.y || (pos.y - radio) > obstaculo.esp.pos.y + obstaculo.esp.ry ) ) {
      retorno = true;
    }

    return retorno;
  }
}

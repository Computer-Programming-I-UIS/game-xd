class Personaje {
  PVector pos;
  PVector vel;
  PVector ace = new PVector(0,0);;
  int radio = 15;
  
  Personaje() {
    pos = new PVector(width/8, height/2);
    vel = new PVector(0, 0);
  }
    void mover (){
      
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
    
    void acelerar(PVector F){
    ace.add(F);
    }
}


  boolean ChocarContraRect(Rect pal) {
  PVector PMC = new PVector (0, 0);
  
  if(pos.x < pal.pos.x-pal.rx) PMC.x = pal.pos.x-p
  else if (pos.x> pal.pos.x-pal.rx) PMC.x = pal.pos
  else PMC.x=pos.x;
  
  if(pos.y < pal.pos.y-pal.ry) PMC.y = pal.pos.y-p
  else if (pos.y> pal.pos.y-pal.ry) PMC.y = pal.pos
  else PMC.y=pos.y;
  
  float dist = PVector.dist(pos, PMC);
  
  if(dist < radio) return true;
  else return false;
}

  
  
  
  
  
  
  
  

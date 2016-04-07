int posx=310;
int posy=200;
void setup()
{//create background colour and size of the canvas
  background(255);
  size(700, 400);
}
void draw() {
  fill(0);
  stroke(150);
  background(255);
  rect(posx, posy, 20, 20);
  if (posx>width+20)
  { 
    posx=-20;
  }
    if (posy>width+20)
  { 
    posy=-20;
  }

  //rect(330, 200, 20, 20);
  //rect(350, 200, 20, 20);
}
void keyPressed()
{if(key == CODED){
  if (keyCode == RIGHT) {posx=posx+5;
  }
  if (keyCode == LEFT) {posx=posx-5;
  }
    if (keyCode == UP) {posy=posy-5;
  }
  if (keyCode == DOWN) {posy=posy+5;
  }
}
}
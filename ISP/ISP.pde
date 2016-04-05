int posx=310;
void setup()
{//create background colour and size of the canvas
  background(255);
  size(700, 400);
}
void draw() {
  fill(0);
  stroke(150);
  background(255);
  rect(mouseX, 200, 20, 20);
  posx= posx+1;
  if (posx>width+20)
  { 
    posx=-20;
  }

  //rect(330, 200, 20, 20);
  //rect(350, 200, 20, 20);
}
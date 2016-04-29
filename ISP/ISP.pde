ArrayList<Integer> x=new ArrayList<Integer>(), y=new ArrayList<Integer>();
//declare variables such as block size and width of canvas and height of canvas
int[] dx={0, 0, 1, -1}, dy={1, -1, 0, 0};
int w=30, h=30, bs=20, dir=2;
int foodx=10, foody=10;
int i=0;
boolean gameover=false;
void setup()
{//create background colour and size of the canvas
  background(255);
  size(600, 600);
  //starting point of the snake determined by x.add and y.add by using the array
  x.add(10);
  y.add(20);
}
void draw() {
  background(255);
  fill(random(255), random(255), random(255));
  rect(x.get(i)*bs, y.get(i)*bs, bs, bs);
  //fill(random(255), random(255),random(255));
  //rect(x.get(i)*bs+20,y.get(i)*bs,bs,bs);
  //fill(random(255), random(255),random(255));
  //rect(x.get(i)*bs+40,y.get(i)*bs,bs,bs);
  fill(255,0,0);
  rect(foodx*bs, foody*bs, bs, bs);
  //adds and removes blocks as the snake moves to create the illusion it is moving 
  //it removes the block and adds another in front of it
  //also controls speed of the snake
  if (frameCount%8==0) {
    x.add(0, x.get(0)+dx[dir]);
    y.add(0, y.get(0)+dy[dir]);
    for (int i = 1; i < x.size(); i++) if (x.get(0) == x.get(i) &&  y.get(0) == y.get(i)) gameover = true;
   //if snake eats block then create new block at random pos
    if (x.get(0)==foodx && y.get(0)==foody) {
      foodx = (int)random(0, w);
      foody = (int)random(0, h);
    }else{
      x.remove(x.size()-1);
      y.remove(y.size()-1);
    }
  }


    if (keyPressed == true) {
      //determines the direction of the movement of the snake based on the w, a , s ,d keys
      int newdir = key =='s' ? 0 : (key=='w' ? 1 : (key=='d' ? 2 : (key=='a' ? 3 : -1)));
      if (newdir != -1) dir = newdir;
    }
  }
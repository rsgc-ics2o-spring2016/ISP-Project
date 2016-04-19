ArrayList<Integer> x=new ArrayList<Integer>(), y=new ArrayList<Integer>();
int[] dx={0,0,1,-1}, dy={1,-1,0,0};
int w=30, h=30, bs=20, dir=2;
void setup()
{//create background colour and size of the canvas
  background(255);
  size(600, 600);
x.add(5);
y.add(5);
}
void draw() {
  background(255);
  for(int i=0; i<w; i++) line(i*bs,0,i*bs, height);
  for (int i = 0; i<h; i++) line(0, i *bs, width, i *bs);
  for (int i =0; i < x.size(); i++) {
  fill(255,0,0);
    rect(x.get(i)*bs,y.get(i)*bs, bs, bs);
    //rect(posx+20, posy, 20, 20);
  //rect(posx+40, posy, 20, 20);
  } 
  if(frameCount%5==0){
    x.add(0,x.get(0)+dx[dir]);
    y.add(0,y.get(0)+dy[dir]);
    x.remove(x.size()-1);
    y.remove(y.size()-1);
  }


 if (keyPressed == true) {  
// get rid of all those stars, but that change above me helps make my program work
      int newdir = key=='s' ? 0 : (key=='w' ? 1 : (key=='d' ? 2 : (key=='a' ? 3 : -1)));
      if(newdir != -1) dir = newdir;
     }
}
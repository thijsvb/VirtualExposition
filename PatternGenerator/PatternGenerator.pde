PGraphics top, left, right, front, back;
int h;
String name = "";

void setup() {
  size(700, 700);
  
  h = floor(max(width,height)/5);
  
  top = createGraphics(width, height);
  left = createGraphics(h,height);
  right = createGraphics(h,height);
  front = createGraphics(width, h);
  back = createGraphics(width, h);
  
  textAlign(CENTER, CENTER);
  textSize(h);
  fill(0);
  noStroke();
}

void draw() {
  background(255);
  text(name, width/2, height/2);
}

void keyPressed() {
  if(key == 10) make();
  else if(key == BACKSPACE || key == DELETE) name = name.substring(0,name.length()-1);
  else if(key != CODED) name += key;
}

void make() {
  int r = 0;
  for(int i=0; i!=name.length(); ++i){
    r += int(name.charAt(i)) * pow(-1, i);
  }
  randomSeed(r);
  
  top.beginDraw();
  top.background(255);
  top.noStroke();
  float x=0, y=0, w;
  for(int i=0; i!=3; ++i){
    x += random(width/5, width/3);
    for(int j=0; j!=3; ++j){
      y += random(height/5, height/3);
      top.fill((j+i*3)*60%150);
      w = random(width/4, width/2);
      top.ellipse(x, y, w, w);
    }
    y = 0;
  }
  top.fill(200);
  top.textAlign(CENTER, CENTER);
  top.textSize(h);
  top.text(name, width/2, height/2);
  top.endDraw();
  top.save("top.jpg");
  
  left.beginDraw();
  left.background(255);
  left.noStroke();
  y = 0;
  for(int i=0; i!=3; ++i) {
    y+=random(left.height/5, left.height/3);
    left.fill(i*60);
    w = random(left.width*2);
    left.ellipse(0,y,w,w);
  }
  left.endDraw();
  left.save("left.jpg");
  
  right.beginDraw();
  right.background(255);
  right.noStroke();
  y = 0;
  for(int i=0; i!=3; ++i) {
    y+=random(right.height/5, right.height/3);
    right.fill(i*60);
    w = random(right.width*2);
    right.ellipse(right.width,y,w,w);
  }
  right.endDraw();
  right.save("right.jpg");
  
  front.beginDraw();
  front.background(255);
  front.noStroke();
  x = 0;
  for(int i=0; i!=3; ++i) {
    x+=random(front.width/5, front.width/3);
    front.fill(i*60);
    w = random(front.height*2);
    front.ellipse(x,front.height,w,w);
  }
  front.endDraw();
  front.save("front.jpg");
  
  back.beginDraw();
  back.background(255);
  back.noStroke();
  x = 0;
  for(int i=0; i!=3; ++i) {
    x+=random(back.width/5, back.width/3);
    back.fill(i*60);
    w = random(back.height*2);
    back.ellipse(x,0,w,w);
  }
  back.endDraw();
  back.save("back.jpg");
  
  image(top, 0, 0);
  noLoop();
}
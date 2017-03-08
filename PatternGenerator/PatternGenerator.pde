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
  float x=0, y=0;
  for(int i=0; i!=3; ++i){
    x += random(width/5, width/3);
    for(int j=0; j!=3; ++j){
      y += random(height/5, height/3);
      top.fill((j+i*3)*60%150);
      float w = random(width/4, width/2);
      top.ellipse(x, y, w, w);
    }
    y = 0;
  }
  top.fill(200);
  top.textAlign(CENTER, CENTER);
  top.textSize(h);
  top.text(name, width/2, height/2);
  top.endDraw();
  top.save("top.png");
  
  image(top, 0, 0);
  noLoop();
}
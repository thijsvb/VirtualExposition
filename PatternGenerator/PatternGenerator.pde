//final int n = 1;
final char[] daf = {'d', 'a', 'f'};
PFont font;
font = createFont("RoboltBattery-OriginalRegular.otf", 128);
textFont(font);
textAlign(CENTER, CENTER);

size(900, 900);

for (int n=1; n!=15; ++n) {
  background(255);
  textSize(128);

  stroke(0);
  line(200, 0, 200, height);
  line(700, 0, 700, height);
  line(0, 200, width, 200);
  line(0, 700, width, 700);

  randomSeed(n);
  for (int i=0; i!=100; ++i) {
    float x = random(width);
    float y = random(height);
    float a = random(TWO_PI);
    int f = floor(random(3));
    println(f);
    int l = floor(random(daf.length));

    pushMatrix();
    fill(f*85);
    translate(x, y);
    rotate(a);
    text(daf[l], 0, 0);  
    popMatrix();
  }

  fill(127);
  textSize(300);
  text(nf(n, 2), width/2, height/2);
  save(n+"/sokkel.png");
  PImage src = loadImage(n+"/sokkel.png");

  PImage top = createImage(500, 500, RGB);
  top.copy(src, 200, 200, 500, 500, 0, 0, 500, 500);
  top.save(n+"/top.png");

  PImage front = createImage(500, 200, RGB);
  front.copy(src, 200, 700, 500, 200, 0, 0, 500, 200);
  front.save(n+"/front.png");

  PImage back = createImage(500, 200, RGB);
  back.copy(src, 200, 0, 500, 200, 0, 0, 500, 200);
  back.save(n+"/back.png");

  PImage right = createImage(200, 500, RGB);
  right.copy(src, 700, 200, 200, 500, 0, 0, 200, 500);
  right.save(n+"/right.png");

  PImage left = createImage(200, 500, RGB);
  left.copy(src, 0, 200, 200, 500, 0, 0, 200, 500);
  left.save(n+"/left.png");
}
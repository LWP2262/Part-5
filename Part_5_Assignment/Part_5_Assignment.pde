PImage photo;
edit pic;
String file = "elephant.jpg";
int colorFilter = #FF0000;
float w;
float h;
void setup() {
  size(480, 480);
  photo = loadImage(file);
  pic = new edit(1);
  image(photo, 40, 100);
  w= photo.width;
  h = photo.height;
  frameRate(10);
}

void draw() { 
  background(255);
  image(photo, 0, 0, w, h);
  if (keyPressed){
  
    if (keyCode == RIGHT) {
      pic.RotateRight();
    }
    if (keyCode == LEFT) {
      pic.RotateLeft();
    } 
    if (keyCode == UP) {
      pic.scaleUp();
    } 
    if (keyCode ==DOWN) {
      pic.scaleDown();
    } 
    if (keyCode == CONTROL) {
      pic.NoFilter();
    }
    if (key == ENTER || key == RETURN) {
      pic.Color();
    } 
    if (keyCode == SHIFT) {
      pic.BandW();
    }
  }
}
PImage photo;
edit pic;
String file = "elephant.jpg";
int colorFilter = #FF0000;
float w;
float h;
float angle = 0;
void setup() {
  size(480, 480);
  photo = loadImage(file);
  pic = new edit(1);
  image(photo, 240, 240);
  w= photo.width;
  h = photo.height;
  frameRate(30);
  imageMode(CENTER);
}

void draw() { 

  if (keyPressed) {

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
    if (keyCode == SHIFT) {
      pic.BandW();
    }
    if (key != CODED) {
      if (key == '1') {
        pic.Red();
      } 
      if (key == '2') {
        pic.Orange();
      }  
      if (key == '3') {
        pic.Yellow();
      }  
      if (key == '4') {
        pic.Lime();
      }  
      if (key == '5') {
        pic.Green();
      }  
      if (key == '6') {
        pic.Cyan();
      }  
      if (key == '7') {
        pic.Royal();
      }  
      if (key == '8') {
        pic.Navy();
      }  
      if (key == '9') {
        pic.Purple();
      }  
      if (key == '0') {
        pic.Magenta();
      }
    }
  }
  background(255);
  image(photo, 240, 240, w, h);
}
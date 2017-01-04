/*  Laurel Parsley 1/1/17
    UP ARROW: Scales image up
    DOWN ARROW: Scales image down
    LEFT and RIGHT ARROWS: Rotates image left or right respectively
    NUMBER KEYS 1-0: Allows you to choose a color for your image
    SHIFT: Dims the image
    CONTROL: Reverts to default coloring
*/
PImage photo;
edit pic;
String file = "elephant.jpg";
int colorFilter = #FF0000;
float w;
float h;
float angle = 0;

void setup() {
  size(480, 480);
  frameRate(40);
  photo = loadImage(file);
  pic = new edit(1);
  w= photo.width;
  h = photo.height;
  translate(240, 240);
  imageMode(CENTER);
  background(255);
  image(photo, 0, 0, w, h);
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
      pic.Dim();
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


    background(255);
    translate(240, 240);
    rotate(angle);
    image(photo, 0, 0, w, h);
  }
}
class edit {
  float x;
  edit(int temp) {
    
  }
  void NoFilter() {
    noTint();
  }
  void BandW() {
   tint(100);
  }
  void Red() {
    tint(#FF0000);
  }
  void Orange(){
    tint(#FF7F00);
  }
  void 
    if (keyPressed) {
    if (key == 1) {
      pic.Red();
    } else if (key == 2) {
      pic.Orange();
    } else if (key == 3) {
      colorFilter =#FFFF00;
    } else if (key == 4) {
      colorFilter =#7FFF00;
    } else if (key == 5) {
      colorFilter =#00FF00;
    } else if (key == 6) {
      colorFilter =#00FF7F;
    } else if (key == 7) {
      colorFilter =#00FFFF;
    } else if (key == 8) {
      colorFilter =#007FFF;
    } else if (key == 9) {
      colorFilter =#0000FF;
    } else if (key == 0) {
      colorFilter = #7F00FF;
    }
  }
    tint(colorFilter);
  
  }
  void RotateLeft() {
    text("Left", 10, 120);
  }
  void RotateRight() {
    text("Right", 10, 120);
  }
  void scaleUp() {
    w= w*1.05;
    h= h*1.05;
  }
  void scaleDown() {
    w= w*.95;
    h= h*.95;
  }
}
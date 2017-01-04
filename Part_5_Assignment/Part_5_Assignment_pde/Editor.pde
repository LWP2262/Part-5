class edit {
  float x;
  edit(int temp) {
  }
  void NoFilter() {
    noTint();
  }
  void Dim() {
    tint(100);
  }
  void Red() {
    tint(255, 0, 0);
  }
  void Orange() {
    tint(255, 127, 0);
  }
  void Yellow() {
    tint(255, 255, 0);
  } 
  void Lime() {
    tint(127, 255, 0);
  }
  void Green() {
    tint(5, 155, 3);
  } 
  void Cyan() {
    tint(0, 255, 176);
  }
  void Royal() {
    tint(#0006FF);
  }
  void Navy() {
    tint(#3B2EB7);
  }
  void Purple() {
    tint(#7F26BC);
  }
  void Magenta() {
    tint(#B71878);
  }
  void RotateLeft() {
    angle -= PI/2;
    delay(250);
  }
  void RotateRight() {
    angle += PI/2;
    delay(250);
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
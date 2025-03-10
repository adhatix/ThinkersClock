class ThinkerClocker {
  int x, y, sizorX, sizorY, number;
  ThinkerClocker(int x, int y, int sizorX, int sizorY, int number) {
    this.x = x;
    this.y = y;
    this.sizorX = sizorX;
    this.sizorY = sizorY;
    this.number = number;
  }
  void show() {
    fill(0, 200, 200);
    stroke(0);
    strokeWeight(2);
    rect(this.x, this.y, this.sizorX, this.sizorY);
    
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(12);
    text(number, this.x + this.sizorX / 2, this.y + this.sizorY / 2);
  }
}

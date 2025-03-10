import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

ThinkerClocker[] rectSecs = new ThinkerClocker[60];
ThinkerClocker[] rectMins = new ThinkerClocker[60];
ThinkerClocker[] rectHours = new ThinkerClocker[24];

void setup() {
  size(900, 900);
  background(0);
  for (int i = 0; i < 60; i++) {
    rectSecs[i] = new ThinkerClocker(650, i * 15, 20, 30, i + 1);
    rectMins[i] = new ThinkerClocker(350, i * 15, 20, 30, i + 1);
  }
  for (int i = 0; i < 24; i++) {
    rectHours[i] = new ThinkerClocker(50, i * 30, 20, 50, i + 1);
  }
}

void draw() {
  background(0);
  LocalTime currTime = LocalTime.now();
  int h = currTime.getHour();
  int m = currTime.getMinute();
  int s = currTime.getSecond();

  for (int i = 0; i < s; i++) {
    rectSecs[i].show();
  }
  for (int i = 0; i < m; i++) {
    rectMins[i].show();
  }
  for (int i = 0; i < h; i++) {
    rectHours[i].show();
  }

  strokeWeight(1);
  stroke(0, 201, 201);
  line(250, 0, 250, height);
  line(550, 0, 550, height);
}

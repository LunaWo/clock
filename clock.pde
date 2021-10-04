// regular clock
float s = map (second(), 0, 60, 0, TWO_PI) - HALF_PI;
float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI;
float h = map (hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
// Draw the hands of the clock
stroke (255,255,0);
strokeWeight(2);
line (cx, cy, cx + cos(s) * seconds Radius, cy + sin(s) * secondsRadius);
strokeWeight(2);
line (cx, cy, cx + cos (m) * minutesRadius, cy + sin(m) * minutesRadius);
strokeWeight(4);
line (cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);
// Draw the minute ticks
strokeWeight(2);
beginShape (POINTS);
for (int a = 0; a < 360; a+=6) {
float angle = radians(a);
float x = cx + cos (angle) * seconds Radius;
float y = cy + sin(angle) * seconds Radius;
vertex (x, y);
}
endShape();

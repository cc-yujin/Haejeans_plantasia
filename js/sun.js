listOfColors = [
  "#ff4800",
  "#ff5400",
  "#ff6000",
  "#ff6d00",
  "#ff7900",
  "#ff8500",
  "#ff9100",
  "#ff9e00",
  "#ffaa00",
  "#ffb600",
];

function setup() {
  ws = min(windowWidth, windowHeight);
  createCanvas(ws, ws);
  angleMode(RADIANS);
  noFill();
  numLines = random(100, 140);
  segs = [];
  for (i = 0; i < numLines; i++) {
    var sr = random(10, ws / 2.5);
    segs.push(
      new L(
        ws / 2,
        ws / 2,
        sr,
        sr + 4,
        random(3000, 3500),
        random(TWO_PI),
        random(listOfColors)
      )
    );
  }
}

let x1;
let x2;
let y1;
let y2;
class L {
  constructor(cx, cy, r1, r2, sp, os, c) {
    this.cx = cx;
    this.cy = cy;
    this.r1 = r1;
    this.r2 = r2;
    this.sp = sp;
    if (random() > 0.5) {
      this.sp = -this.sp;
    }
    this.os = os;
    this.c = c;
    this.sw = random(1.2, 5.2);
    this.trailLength = random(2, 10);

    this.history = [];
  }

  display() {
    if (mouseX > this.cx) {
      x1 = this.cx + this.r1 * cos(millis() / this.sp + this.os);
      y1 = this.cy + this.r1 * sin(millis() / this.sp + this.os);
      x2 = this.cx + this.r2 * sin(millis() / this.sp + this.os);
      y2 = this.cy + this.r2 * cos(millis() / this.sp + this.os);
    } else {
      x1 = this.cx + this.r1 * cos(millis() / this.sp + this.os);
      y1 = this.cy + this.r1 * sin(millis() / this.sp + this.os);
      x2 = this.cx + this.r2 * cos(millis() / this.sp + this.os);
      y2 = this.cy + this.r2 * sin(millis() / this.sp + this.os);
    }

    stroke(this.c);
    strokeWeight(this.sw);
    line(x1, y1, x2, y2);

    var v1 = createVector(x1, y1);
    var v2 = createVector(x2, y2);
    var l = [v1, v2];
    this.history.push(l);

    var col = color(this.c);
    for (let i = 0; i < this.history.length; i++) {
      col.setAlpha(255 - 100 + 20 * i);
      stroke(col);
      strokeWeight(this.sw - i * 0.1);
      if (
        noise(x1 * 0.002 + millis() / 2000, y1 * 0.002 + millis() / 2000) > 0.5
      ) {
        line(
          this.history[i][0].x,
          this.history[i][0].y,
          this.history[i][1].x,
          this.history[i][1].y
        );
      } else {
        point(this.history[i][0].x, this.history[i][0].y);
      }
    }

    if (this.history.length > this.trailLength) {
      this.history.splice(0, 1);
    }
  }
}

function draw() {
  blendMode(BLEND);
  background(0);
  blendMode(ADD);
  for (i = 0; i < numLines; i++) {
    segs[i].display();
  }
}

function windowResized() {
  ws = min(windowWidth, windowHeight);
  createCanvas(ws, ws);
  for (i = 0; i < numLines; i++) {
    segs[i].cx = ws / 2;
    segs[i].cy = ws / 2;

    var sr = random(10, ws / 2.5);
    segs[i].r1 = sr;
    segs[i].r2 = sr + random(1, 5);
  }
}

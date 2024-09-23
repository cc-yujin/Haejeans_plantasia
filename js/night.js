let csound;
let initialized = false;

// Csound 파일을 fetch로 불러오는 함수
async function loadCsoundFile() {
  const response = await fetch("../csd/night.csd");
  return response.text(); // 파일 내용을 텍스트로 반환
}

// Csound 초기화 및 설정 함수
async function setupCsound() {
  const soundCode = await loadCsoundFile(); // .csd 파일을 불러옴
  csound = await Csound(); // Csound 브라우저 모듈 초기화
  await csound.compileCsdText(soundCode); // 불러온 .csd 파일을 컴파일
  await csound.start(); // Csound 시작
  initialized = true;
}

async function mouseClicked() {
  if (!initialized) {
    await setupCsound(); // 마우스 클릭 시 Csound 초기화 및 시작
  }
}

// p5.js
let r, g, b;
let angle = 0;
let angleRev = 0;
let meteors = []; // 유성 배열

function setup() {
  r = random(255);
  g = random(255);
  b = random(255);

  createCanvas(windowWidth, windowHeight);
  angleMode(DEGREES);
  noCursor();

  // 유성 생성
  for (let i = 0; i < 10; i++) {
    meteors.push(new Meteor());
  }
}

function draw() {
  background(0, 0, 30, 10);

  // 별 그리기
  push();
  translate(width / 2, height / 2);
  rotate(angle);
  fill(r, g, b);
  drawFruit();

  rotate(-angleRev);
  drawFruit2();
  pop();

  angle += 0.5; // 회전 속도 조절
  angleRev += 0.8; // 회전 속도 조절

  // 반짝이는 별들
  drawBlinkingStars();

  // 유성우 그리기
  for (let i = 0; i < meteors.length; i++) {
    meteors[i].fall();
    meteors[i].show();
  }

  // 마우스 커서 대신 작은 원 그리기
  fill(255);
  noStroke();
  ellipse(mouseX, mouseY, 5, 5);
}

// 유성을 표현하는 클래스
class Meteor {
  constructor() {
    this.x = random(width);
    this.y = random(-height, 0); // 화면 위에서 시작
    this.size = random(5, 8); // 유성 크기
    this.speed = random(1, 5); // 유성 속도
    this.alpha = random(150, 255); // 투명도
  }

  // 유성이 떨어지는 애니메이션
  fall() {
    this.y += this.speed;
    this.x += this.speed / 2; // 대각선으로 떨어지게 만듦

    // 유성이 화면을 벗어나면 재생성
    if (this.y > height) {
      this.y = random(-100, 0);
      this.x = random(width);
      this.speed = random(5, 10);
      this.size = random(5, 8);
    }
  }

  // 유성 그리기
  show() {
    fill(255, 255, 255, this.alpha);
    noStroke();
    ellipse(this.x, this.y, this.size, this.size);
  }
}

function drawFruit() {
  let cloverSize = 10;
  let distanceFromCenter = 250; // 중앙으로부터 떨어진 거리

  fill(235, 36, 152);
  noStroke();

  for (let i = 0; i < 10; i++) {
    push();
    rotate((-360 / 10) * i);
    translate(distanceFromCenter, 0);

    ellipse(0, 0, cloverSize * 2.8, cloverSize * 3.2); // 열매 모양
    pop(); // 이전 상태로 되돌림
  }
}

function drawFruit2() {
  let cloverSize = 10;
  let distanceFromCenter = 150; // 중앙으로부터 떨어진 거리

  fill(244, 241, 159);
  noStroke();

  for (let i = 0; i < 10; i++) {
    push();
    rotate((-360 / 10) * i);
    translate(distanceFromCenter, 0);

    ellipse(0, 0, cloverSize * 2.8, cloverSize * 3.2); // 열매 모양
    pop(); // 이전 상태로 되돌림
  }
}

// 반짝이는 별들
function drawBlinkingStars() {
  for (let i = 0; i < 5; i++) {
    let star = {
      x: random(width),
      y: random(height),
      size: random(1, 3),
      alpha: random(100, 255),
    };

    fill(255, 255, 255, star.alpha);
    noStroke();
    ellipse(star.x, star.y, star.size, star.size);
  }
}

let csound;
let initialized = false;

// Csound 파일을 fetch로 불러오는 함수
async function loadCsoundFile() {
  const response = await fetch("../csd/plant.csd");
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
let angle = 0; // 회전 각도
let fruitAngle = 0; // 열매의 반대 방향 회전 각도
let t = 0; // 시간 변수

function setup() {
  createCanvas(windowWidth, windowHeight);
  angleMode(DEGREES); // 각도 모드를 degrees로 설정
}

function draw() {
  background(179, 208, 255);

  translate(width / 2, height / 2); // 캔버스 중앙으로 이동
  rotate(angle); // 회전

  drawLeaves();
  drawStamen();
  rotate(-fruitAngle); // 반대 방향으로 열매 회전
  drawFlower();
  drawFruit();

  angle += 0.4; // 천천히 회전하도록 각도 증가
  fruitAngle += 0.5; // 열매의 반대 방향 회전 각도
}

// 1. 잎
function drawLeaves() {
  let leafWidth = 170; // 잎의 너비
  let leafHeight = 300; // 잎의 높이 (너비보다 약간 더 크도록 설정)

  fill(168, 245, 163);
  noStroke();

  for (let i = 0; i < 4; i++) {
    drawLeaf(leafWidth, leafHeight); // 잎을 그리는 함수 호출
    rotate(90); // 90도 회전하여 네 잎을 배치
  }
}

function drawLeaf(leafWidth, leafHeight) {
  beginShape();
  for (let t = 0; t < 360; t++) {
    let x = leafWidth * cos(t) * (1 + 0.8 * sin(2 * t)); // 약간의 변화를 추가해 자연스러운 잎 모양
    let y = leafHeight * sin(t);
    vertex(x, y);
  }
  endShape(CLOSE);
}

// 수술
function drawStamen() {
  let cloverSize = 150;

  fill(34, 139, 134);
  noStroke();

  for (let i = 0; i < 5; i++) {
    ellipse(cloverSize / 20, 0, cloverSize, cloverSize * 2.2);
    rotate(100);
  }
}

// 열매
function drawFruit() {
  let cloverSize = 9.5;
  let distanceFromCenter = 250; // 중앙으로부터 떨어진 거리

  fill(235, 36, 152);
  noStroke();

  for (let i = 0; i < 10; i++) {
    push();
    rotate((-360 / 10) * i); // 열매의 각도 분배
    // 중앙에서 150px 떨어진 곳에 열매 배치
    translate(distanceFromCenter, 0);

    // 열매 그리기
    ellipse(0, 0, cloverSize * 2.8, cloverSize * 3.2); // 열매 모양
    pop(); // 이전 상태로 되돌림
  }
}

// 꽃
function drawFlower() {
  let size = 80;

  fill(100, 200, 255); // 파란색
  noStroke();

  for (let i = 0; i < 6; i++) {
    ellipse(size / 1, 0, size, size * 1.2); // 꽃잎 모양
    rotate(60); // 60도 회전하여 여섯 잎 배치
  }
}

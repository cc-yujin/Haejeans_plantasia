let x;
let y;
let Xspeed;
let Yspeed;
let c = 0; // color of the plant
let cycle = 0;
let remainder = cycle % 3;
let wobbleAmplitude = 20; // 흔들림의 크기
let wobbleFrequency = 5; // 흔들림의 주기

let initialized = false;
let csound;

function setup() {
  createCanvas(windowWidth, windowHeight);
  noStroke();
  angleMode(DEGREES);
  //   Xspeed = random(-2, 5);
  //   Yspeed = random(-2, 0);
  //   x = width / 2;
  //   y = height;
  // x와 y를 화면의 랜덤한 위치로 설정
  x = random(width);
  y = random(height);
  // Xspeed와 Yspeed를 랜덤한 속도로 설정
  Xspeed = random(-5, 5); // -5에서 5까지 랜덤 속도 (양방향 가능)
  Yspeed = random(-5, 5); // -5에서 5까지 랜덤 속도 (양방향 가능)
  background(0);
}

function draw() {
  if (cycle === 0) {
    fill(250 - c * 5, 255, 230); // changing color of blue
  } else if (cycle === 1) {
    fill(250 - c * 5, 250 - c * 5, 255); //changing color of purple
  } else if (cycle === 2) {
    fill(255, 180 - c * 4, 255); //changing color of pink
  } else {
    fill(160 - c * 3, 255, 210 - c * 2); //changing color of green
  }
  c = (c + 1) % 40; // period

  const num = 6;
  let wobble = sin(frameCount * wobbleFrequency) * wobbleAmplitude; // 흔들림 계산
  for (let i = 0; i <= 6; i = i + 1) {
    const dx = cos((360 / 6) * i);
    const dy = sin((360 / 6) * i);
    circle(x + dx * c, y + dy * c, 10);
    // circle(x + dx * c + wobble, y + dy * c, 10); // 흔들림 적용
  }

  x = x + Xspeed;
  y = y + Yspeed;

  if (x < 0 || width < x || y < 0) {
    Xspeed = random(-2, 2); // Randomize Xspeed after each cycle
    Yspeed = random(-2, 0); // Randomize Yspeed after each cycle
    x = random(width / 2 - 50, width / 2 + 50);
    y = height;
    cycle = cycle + 1;
    console.log(cycle);
    console.log(remainder);
  }

  if (cycle >= 30) {
    noLoop();
  }
}
async function playMusic() {
  if (!initialized) {
    try {
      csound = await Csound(); // Csound 초기화
      console.log("Csound initialized");

      await csound.compileCsdText(soundCode); // Csound 코드 컴파일
      console.log("Csound script compiled");

      await csound.start(); // 음악 재생 시작
      console.log("Csound started");

      initialized = true; // 초기화 플래그 설정
    } catch (err) {
      console.error("Error initializing Csound:", err);
    }
  }
}

// 페이지가 로드되면 음악 재생 시작
window.onload = () => {
  playMusic();
};

async function mouseClicked() {
  if (!initialized) {
    try {
      csound = await Csound();
      console.log("Csound initialized");

      await csound.compileCsdText(soundCode);
      console.log("Csound script compiled");

      await csound.start();
      console.log("Csound started");

      initialized = true;
    } catch (err) {
      console.error("Error initializing Csound:", err);
    }
  }
}

let soundCode = `<CsoundSynthesizer>
<CsOptions>
-odac -m4  ; 오디오 출력 및 모니터링 옵션
</CsOptions>

<CsInstruments>
nchnls = 2
0dbfs = 1.0
sr = 44100
ksmps = 32

instr melody
  iBPM = 90 
  ib = 60 / i(iBPM) 

  schedule "arpeggio1", 0, ib * 2 * 6, 0.5, 5
  schedule "whistle", ib * 2 * 4,  0.7, 99

  schedule "synth1", ib * 2 * 4 + ib * 2, 0.5, 67 
  schedule "synth1", ib * 2 * 4 + ib * 2.25, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 2.5, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 2.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 3, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 3.25, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 3.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 3.75, 0.5, 68


  schedule "whistle", ib * 2 * 4 + ib * 2, 0.4, 99
  schedule "whistle", ib * 2 * 4 + ib * 2.9, 0.7, 104


  schedule "arpeggio2", ib * 2 * 4 + ib * 4, 0.5, 1
  schedule "whistle", ib * 2 * 4 + ib * 4,  0.4, 101
  schedule "whistle", ib * 2 * 4 + ib * 5, 0.6, 97

  schedule "arpeggio3", ib * 2 * 4 + ib * 6, 0.5, 1
  schedule "whistle", ib * 2 * 4 + ib * 7,  0.5, 96
  schedule "whistle", ib * 2 * 4 + ib * 7.5, 0.5, 94

  schedule "arpeggio4", ib * 2 * 4 + ib * 8, 1, 1
  schedule "whistle", ib * 2 * 4 + ib * 8, 1, 96


  schedule "synth1", ib * 2 * 4 + ib * 10, 0.5, 61
  schedule "synth1", ib * 2 * 4 + ib * 10.25, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 10.5, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 10.75, 0.5, 71
  schedule "synth1", ib * 2 * 4 + ib * 11, 0.5, 82
  schedule "synth1", ib * 2 * 4 + ib * 11.25, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 11.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 11.75, 0.5, 68
  schedule "whistle", ib * 2 * 4 + ib * 11, 1, 100
  schedule "whistle", ib * 2 * 4 + ib * 12, 1.5, 94

  schedule "synth1", ib * 2 * 4 + ib * 12, 0.5, 60
  schedule "synth1", ib * 2 * 4 + ib * 12.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 12.5, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 12.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 13, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 13.25, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 13.5, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 13.75, 0.5, 64

  schedule "synth1", ib * 2 * 4 + ib * 14, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 14.25, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 14.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 14.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 15, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 15.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 15.5, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 15.75, 0.5, 66


  schedule "whistle", ib * 2 * 4 + ib * 15, 0.5, 96
  schedule "whistle", ib * 2 * 4 + ib * 15.5, 0.5, 94

  schedule "synth1", ib * 2 * 4 + ib * 16, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 16.25, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 16.5, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 16.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 17, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 17.25, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 17.5, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 17.75, 0.5, 66

  schedule "whistle", ib * 2 * 4 + ib * 16, 1, 92

  schedule "synth1", ib * 2 * 4 + ib * 18, 0.5, 62
  schedule "synth1", ib * 2 * 4 + ib * 18.25, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 18.5, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 18.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 19, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 19.25, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 19.5, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 19.75, 0.5, 64

  schedule "whistle", ib * 2 * 4 + ib * 18, 0.5, 92
  schedule "whistle", ib * 2 * 4 + ib * 19, 0.5, 96

  schedule "synth1", ib * 2 * 4 + ib * 20, 0.5, 60
  schedule "synth1", ib * 2 * 4 + ib * 20.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 20.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 20.75, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 21, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 21.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 21.5, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 21.75, 0.5, 58

  schedule "whistle", ib * 2 * 4 + ib * 20, 0.5, 92
  schedule "whistle", ib * 2 * 4 + ib * 21, 0.5, 89

  schedule "synth1", ib * 2 * 4 + ib * 22, 0.5, 56
  schedule "synth1", ib * 2 * 4 + ib * 22.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 22.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 22.75, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 23, 0.5, 54
  schedule "synth1", ib * 2 * 4 + ib * 23.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 23.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 23.75, 0.5, 75

  schedule "whistle", ib * 2 * 4 + ib * 22, 0.5, 90
  schedule "whistle", ib * 2 * 4 + ib * 23, 0.5, 92


  schedule "synth1", ib * 2 * 4 + ib * 24, 0.5, 52
  schedule "synth1", ib * 2 * 4 + ib * 24.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 24.5, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 24.75, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 25, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 25.25, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 25.5, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 25.75, 0.5, 64

  schedule "whistle", ib * 2 * 4 + ib * 24, 1, 94
  
  schedule "synth1", ib * 2 * 4 + ib * 26, 0.5, 52
  schedule "synth1", ib * 2 * 4 + ib * 26.25, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 26.5, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 26.75, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 27, 0.5, 84
  schedule "synth1", ib * 2 * 4 + ib * 27.25, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 27.5, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 27.75, 0.5, 70

  schedule "whistle", ib * 2 * 4 + ib * 27.5, 0.5, 94

endin


instr arpeggio1
  iBPM = 90
  ib = 60 / i(iBPM)
  p_repeat = p5  ; 반복 횟수를 p5로 받음

  schedule "synth1", 0, 0.5, 68
  schedule "synth1", ib * 0.25, 0.5, 72
  schedule "synth1", ib * 0.5, 0.5, 80
  schedule "synth1", ib * 0.75, 0.5, 75

  schedule "synth1", ib * 1, 0.5, 84
  schedule "synth1", ib * 1.25, 0.5, 80
  schedule "synth1", ib * 1.5, 0.5, 75
  schedule "synth1", ib * 1.75, 0.5, 72

  if p_repeat > 1 then
    schedule "arpeggio1", ib * 2, p3, p4, p_repeat - 1
  endif
endin


instr arpeggio2
  iBPM = 90
  ib = 60 / i(iBPM)
  p_repeat = p5  ; 반복 횟수를 p5로 받음

  schedule "synth1", 0, 0.5, 66
  schedule "synth1", ib * 0.25, 0.5, 70
  schedule "synth1", ib * 0.5, 0.5, 78
  schedule "synth1", ib * 0.75, 0.5, 73

 schedule "synth1", ib * 1, 0.5, 82
  schedule "synth1", ib * 1.25, 0.5, 78
  schedule "synth1", ib * 1.5, 0.5, 73
  schedule "synth1", ib * 1.75, 0.5, 70

  ; 반복 호출
  if p_repeat > 1 then
    schedule "arpeggio2", ib * 2, p3, p4, p_repeat - 1
  endif
endin



instr arpeggio3
  iBPM = 90
  ib = 60 / i(iBPM)
  p_repeat = p5  ; 반복 횟수를 p5로 받음

  schedule "synth1", 0, 0.5, 65
  schedule "synth1", ib * 0.25, 0.5, 70
  schedule "synth1", ib * 0.5, 0.5, 77
  schedule "synth1", ib * 0.75, 0.5, 73

 schedule "synth1", ib * 1, 0.5, 82
  schedule "synth1", ib * 1.25, 0.5, 78
  schedule "synth1", ib * 1.5, 0.5, 73
  schedule "synth1", ib * 1.75, 0.5, 70

  ; 반복 호출
  if p_repeat > 1 then
    schedule "arpeggio2", ib * 2, p3, p4, p_repeat - 1
  endif
endin

instr arpeggio4
  iBPM = 90
  ib = 60 / i(iBPM)
  p_repeat = p5  ; 반복 횟수를 p5로 받음

  schedule "synth1", 0, 0.5, 64
  schedule "synth1", ib * 0.25, 0.5, 70
  schedule "synth1", ib * 0.5, 0.5, 76
  schedule "synth1", ib * 0.75, 0.5, 71

 schedule "synth1", ib * 1, 0.5, 82
  schedule "synth1", ib * 1.25, 0.5, 76
  schedule "synth1", ib * 1.5, 0.5, 72
  schedule "synth1", ib * 1.75, 0.5, 68

  ; 반복 호출
  if p_repeat > 1 then
    schedule "arpeggio2", ib * 2, p3, p4, p_repeat - 1
  endif
endin


instr synth1
  aenv line 0.1, p3, 0.0
  asig oscil aenv, cpsmidinn(p4), 1
  outs asig, asig
endin


instr whistle
  iFreq = cpsmidinn(p4)
  aenv linsegr 0.0, 0.1, 0.3, 0.4, 0.2, 0.3, 0.0 
  kVib lfo 0.002, 6, 1 
  aOsc oscil aenv, iFreq + kVib, 1
  aFilt tone aOsc, 2000 
  aFilt2 atone aFilt, 4000
  
  outs aFilt2, aFilt2
endin


</CsInstruments>

<CsScore>
f 1 0 4096 10 1

i "melody" 0 0.1  ; 시작 시간 0, 길이 0.1 (p4는 전달하지 않음)

</CsScore>
</CsoundSynthesizer>`;

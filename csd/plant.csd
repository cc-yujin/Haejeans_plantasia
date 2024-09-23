<CsoundSynthesizer>
<CsOptions>
-odac -m4  ; 오디오 출력 및 모니터링 옵션
</CsOptions>

<CsInstruments>
nchnls = 2
0dbfs = 1.0
sr = 44100
ksmps = 32

instr melody
  ; 휘슬 멜로디와 아르페지오를 스케줄링
  iBPM = 90  ; 템포 90 설정
  ib = 60 / i(iBPM)  ; 1박자의 시간 (초)
  
  ; 아르페지오 반복 횟수를 여기서 직접 설정합니다.
  ; i_repeat_count = 6  ; 반복 횟수를 6으로 설정
  

  prints "////////////// 곡 시작 ////////////\n" 
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

//////////////////////////////////////////////////////

  schedule "arpeggio2", ib * 2 * 4 + ib * 4, 0.5, 1
  schedule "whistle", ib * 2 * 4 + ib * 4,  0.4, 101
  schedule "whistle", ib * 2 * 4 + ib * 5, 0.6, 97

  schedule "arpeggio3", ib * 2 * 4 + ib * 6, 0.5, 1
  schedule "whistle", ib * 2 * 4 + ib * 7,  0.5, 96
  schedule "whistle", ib * 2 * 4 + ib * 7.5, 0.5, 94

  schedule "arpeggio4", ib * 2 * 4 + ib * 8, 1, 1
  schedule "whistle", ib * 2 * 4 + ib * 8, 1, 96



  /////////////////////// 불협화음 구간 ////////////////////////

  schedule "synth1", ib * 2 * 4 + ib * 10, 0.5, 61
  schedule "synth1", ib * 2 * 4 + ib * 10.25, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 10.5, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 10.75, 0.5, 71
  schedule "synth1", ib * 2 * 4 + ib * 11, 0.5, 82
  schedule "synth1", ib * 2 * 4 + ib * 11.25, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 11.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 11.75, 0.5, 68
  ; schedule "whistle", ib * 2 * 4 + ib * 10, 1, 96
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

///////////////////////////// 불협화음 구간 ///////////////////

  schedule "whistle", ib * 2 * 4 + ib * 15, 0.5, 96
  schedule "whistle", ib * 2 * 4 + ib * 15.5, 0.5, 94

  //////////////////////////////////////////////////////


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
  //////////////////////////////////////////////////////

  schedule "synth1", ib * 2 * 4 + ib * 28, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 28.25, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 28.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 28.75, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 29, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 29.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 29.5, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 29.75, 0.5, 72

  schedule "whistle", ib * 2 * 4 + ib * 28, 0.5, 94
  schedule "whistle", ib * 2 * 4 + ib * 28.5, 1, 96

  schedule "synth1", ib * 2 * 4 + ib * 30, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 30.25, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 30.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 30.75, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 31, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 31.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 31.5, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 31.75, 0.5, 72

  schedule "whistle", ib * 2 * 4 + ib * 31, 0.5, 94
  schedule "deep_bass", ib * 2 * 4 + ib * 31.75, 1, 39

  schedule "synth1", ib * 2 * 4 + ib * 32, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 32.25, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 32.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 32.75, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 33, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 33.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 33.5, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 33.75, 0.5, 72

  schedule "whistle", ib * 2 * 4 + ib * 32, 1, 92
  schedule "brass_lead", ib * 2 * 4 + ib * 32, 1, 92
  schedule "deep_bass", ib * 2 * 4 + ib * 32, 0.75, 45
  schedule "deep_bass", ib * 2 * 4 + ib * 33.75, 0.5, 45

  schedule "synth1", ib * 2 * 4 + ib * 34, 0.5, 57
  schedule "synth1", ib * 2 * 4 + ib * 34.25, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 34.5, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 34.75, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 35, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 35.25, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 35.5, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 35.75, 0.5, 72

  schedule "whistle", ib * 2 * 4 + ib * 34, 0.75, 90
  schedule "whistle", ib * 2 * 4 + ib * 35.75, 0.5, 92
  schedule "brass_lead", ib * 2 * 4 + ib * 35, 0.5, 92
  schedule "brass_lead", ib * 2 * 4 + ib * 35, 0.5, 98
  schedule "deep_bass", ib * 2 * 4 + ib * 34, 0.75, 44
  schedule "deep_bass", ib * 2 * 4 + ib * 35.75, 0.5, 45

  schedule "synth1", ib * 2 * 4 + ib * 36, 0.5, 54
  schedule "synth1", ib * 2 * 4 + ib * 36.25, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 36.5, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 36.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 37, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 37.25, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 37.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 37.75, 0.5, 72

  schedule "whistle", ib * 2 * 4 + ib * 36, 1, 88
  schedule "brass_lead", ib * 2 * 4 + ib * 36, 0.5, 94
  schedule "brass_lead", ib * 2 * 4 + ib * 37, 1, 90
  schedule "deep_bass", ib * 2 * 4 + ib * 36, 0.75, 43
  schedule "deep_bass", ib * 2 * 4 + ib * 37.75, 0.5, 43

  schedule "synth1", ib * 2 * 4 + ib * 38, 0.5, 53
  schedule "synth1", ib * 2 * 4 + ib * 38.25, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 38.5, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 38.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 39, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 39.25, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 39.5, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 39.75, 0.5, 62

  schedule "whistle", ib * 2 * 4 + ib * 39.75, 0.5, 90
  schedule "brass_lead", ib * 2 * 4 + ib * 39, 0.5, 88
  schedule "brass_lead", ib * 2 * 4 + ib * 39.5, 0.5, 86
  schedule "deep_bass", ib * 2 * 4 + ib * 38, 0.75, 42
  schedule "deep_bass", ib * 2 * 4 + ib * 39.75, 0.5, 43

  //////////////////////////////////////////////////////

  schedule "synth1", ib * 2 * 4 + ib * 40, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 40.25, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 40.5, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 40.75, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 41, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 41.25, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 41.5, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 41.75, 0.5, 62

  schedule "whistle", ib * 2 * 4 + ib * 40, 0.5, 92
  schedule "brass_lead", ib * 2 * 4 + ib * 40, 1, 88
  schedule "deep_bass", ib * 2 * 4 + ib * 40, 0.75, 42
  schedule "deep_bass", ib * 2 * 4 + ib * 41.75, 0.5, 42

  schedule "synth1", ib * 2 * 4 + ib * 42, 0.5, 56
  schedule "synth1", ib * 2 * 4 + ib * 42.25, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 42.5, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 42.75, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 43, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 43.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 43.5, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 43.75, 0.5, 62

  schedule "whistle", ib * 2 * 4 + ib * 43.5, 0.5, 90
  schedule "whistle", ib * 2 * 4 + ib * 43.75, 0.5, 92
  schedule "brass_lead", ib * 2 * 4 + ib * 43.75, 0.5, 94
  schedule "deep_bass", ib * 2 * 4 + ib * 42, 0.75, 40
  schedule "deep_bass", ib * 2 * 4 + ib * 43.75, 0.5, 41

  schedule "synth1", ib * 2 * 4 + ib * 44, 0.5, 57
  schedule "synth1", ib * 2 * 4 + ib * 44.5, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 44.5, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 44.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 45, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 45.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 45.5, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 45.75, 0.5, 64

  schedule "whistle", ib * 2 * 4 + ib * 44, 1, 88
  schedule "brass_lead", ib * 2 * 4 + ib * 44, 1.5, 86
  schedule "deep_bass", ib * 2 * 4 + ib * 44, 0.75, 41
  schedule "deep_bass", ib * 2 * 4 + ib * 45.75, 0.25, 41

  schedule "synth1", ib * 2 * 4 + ib * 46, 0.5, 54
  schedule "synth1", ib * 2 * 4 + ib * 46.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 46.5, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 46.75, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 47, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 47.25, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 47.5, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 47.75, 0.5, 58

  schedule "whistle", ib * 2 * 4 + ib * 46, 1, 86
  schedule "brass_lead", ib * 2 * 4 + ib * 47.5, 0.5, 88
  schedule "brass_lead", ib * 2 * 4 + ib * 47.75, 0.5, 86
  schedule "deep_bass", ib * 2 * 4 + ib * 46, 0.75, 38
  schedule "deep_bass", ib * 2 * 4 + ib * 47.75, 0.5, 38

  schedule "synth1", ib * 2 * 4 + ib * 48, 0.5, 62
  schedule "synth1", ib * 2 * 4 + ib * 48.25, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 48.5, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 48.75, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 49, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 49.25, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 49.5, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 49.75, 0.5, 66

  schedule "whistle", ib * 2 * 4 + ib * 48, 1, 88
  schedule "brass_lead", ib * 2 * 4 + ib * 49.5, 0.5, 84
  schedule "deep_bass", ib * 2 * 4 + ib * 48, 0.75, 44
  schedule "deep_bass", ib * 2 * 4 + ib * 49.75, 0.55, 44

  schedule "synth1", ib * 2 * 4 + ib * 50, 0.5, 60
  schedule "synth1", ib * 2 * 4 + ib * 50.25, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 50.5, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 50.75, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 51, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 51.25, 0.5, 70
  schedule "synth1", ib * 2 * 4 + ib * 51.5, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 51.75, 0.5, 65

  schedule "whistle", ib * 2 * 4 + ib * 50, 0.75, 86
  schedule "whistle", ib * 2 * 4 + ib * 51.75, 0.5, 88
  schedule "brass_lead", ib * 2 * 4 + ib * 50, 0.5, 84
  schedule "brass_lead", ib * 2 * 4 + ib * 51, 0.5, 88
  schedule "deep_bass", ib * 2 * 4 + ib * 50, 0.75, 42
  schedule "deep_bass", ib * 2 * 4 + ib * 51.75, 0.55, 42


  //////////////////////////////////////////////////////

  schedule "synth1", ib * 2 * 4 + ib * 52, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 52.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 52.5, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 52.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 53, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 53.25, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 53.5, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 53.75, 0.5, 76

  schedule "synth1", ib * 2 * 4 + ib * 54, 0.5, 86
  schedule "synth1", ib * 2 * 4 + ib * 54.25, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 54.5, 0.5, 90
  schedule "synth1", ib * 2 * 4 + ib * 54.75, 0.5, 86
  schedule "synth1", ib * 2 * 4 + ib * 55, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 55.25, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 55.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 55.75, 0.5, 66

  schedule "whistle", ib * 2 * 4 + ib * 52, 0.5, 82
  schedule "whistle", ib * 2 * 4 + ib * 53, 0.5, 78
  schedule "whistle", ib * 2 * 4 + ib * 54, 0.5, 80
  schedule "whistle", ib * 2 * 4 + ib * 55, 0.5, 82
  schedule "brass_lead", ib * 2 * 4 + ib * 52, 0.5, 82
  schedule "brass_lead", ib * 2 * 4 + ib * 53, 0.5, 78
  schedule "brass_lead", ib * 2 * 4 + ib * 54, 0.5, 80
  schedule "brass_lead", ib * 2 * 4 + ib * 55, 0.5, 82
  schedule "deep_bass", ib * 2 * 4 + ib * 52, 0.75, 40
  schedule "deep_bass", ib * 2 * 4 + ib * 53,75, 0.5, 38
  schedule "deep_bass", ib * 2 * 4 + ib * 54, 0.5, 36
  schedule "deep_bass", ib * 2 * 4 + ib * 55.75, 0.5, 34

  schedule "synth1", ib * 2 * 4 + ib * 56, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 56.25, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 56.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 56.75, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 57, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 57.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 57.5, 0.5, 82
  schedule "synth1", ib * 2 * 4 + ib * 57.75, 0.5, 76

  schedule "synth1", ib * 2 * 4 + ib * 58, 0.5, 86
  schedule "synth1", ib * 2 * 4 + ib * 58.25, 0.5, 82
  schedule "synth1", ib * 2 * 4 + ib * 58.5, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 58.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 59, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 59.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 59.5, 0.5, 62
  schedule "synth1", ib * 2 * 4 + ib * 59.75, 0.5, 68

  schedule "whistle", ib * 2 * 4 + ib * 56, 0.5, 82
  schedule "whistle", ib * 2 * 4 + ib * 57, 0.5, 86
  schedule "whistle", ib * 2 * 4 + ib * 58, 0.5, 90
  schedule "whistle", ib * 2 * 4 + ib * 59, 0.5, 94
  schedule "brass_lead", ib * 2 * 4 + ib * 56, 2.5, 84
  schedule "brass_lead", ib * 2 * 4 + ib * 58.75, 0.5, 83
  schedule "deep_bass", ib * 2 * 4 + ib * 56, 0.75, 38
  schedule "deep_bass", ib * 2 * 4 + ib * 57.75, 0.5, 52
  schedule "deep_bass", ib * 2 * 4 + ib * 58, 0.75, 38
  schedule "deep_bass", ib * 2 * 4 + ib * 59.75, 0.5, 38

  schedule "synth1", ib * 2 * 4 + ib * 60, 0.5, 62
  schedule "synth1", ib * 2 * 4 + ib * 60.25, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 60.5, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 60.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 61, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 61.25, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 61.5, 0.5, 82
  schedule "synth1", ib * 2 * 4 + ib * 61.75, 0.5, 78

  schedule "synth1", ib * 2 * 4 + ib * 62, 0.5, 86
  schedule "synth1", ib * 2 * 4 + ib * 62.25, 0.5, 82
  schedule "synth1", ib * 2 * 4 + ib * 62.5, 0.5, 92
  schedule "synth1", ib * 2 * 4 + ib * 62.75, 0.5, 90
  schedule "synth1", ib * 2 * 4 + ib * 63, 0.5, 86
  schedule "synth1", ib * 2 * 4 + ib * 63.25, 0.5, 82
  schedule "synth1", ib * 2 * 4 + ib * 63.5, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 63.75, 0.5, 76

  schedule "whistle", ib * 2 * 4 + ib * 62, 0.5, 96
  schedule "whistle", ib * 2 * 4 + ib * 62.5, 0.5, 94
  schedule "whistle", ib * 2 * 4 + ib * 63, 0.5, 90
  schedule "whistle", ib * 2 * 4 + ib * 63.5, 0.5, 86
  schedule "brass_lead", ib * 2 * 4 + ib * 60, 2, 84
  schedule "deep_bass", ib * 2 * 4 + ib * 60, 1, 38
  schedule "deep_bass", ib * 2 * 4 + ib * 63.75, 0.25, 38

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

  ; 반복 호출
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

instr brass_lead
  ; 부드럽고 따뜻한 엔벨로프 설정
  aenv linsegr 0.0, 0.2, 0.7, p3 - 0.2, 0.6, 0.2, 0.0  ; 부드러운 상승과 천천히 감쇠

  ; 매우 약한 Vibrato, 자연스럽고 따뜻한 느낌으로 설정
  kVib lfo 0.1, 4, 1  ; 진폭을 낮추고 속도를 느리게 조정

  ; 낮은 음역대에서 부드러운 소리 생성
  aOsc1 oscil aenv, cpsmidinn(p4 - 12) + kVib, 1  ; 삼각파로 음역대를 한 옥타브 낮춤
  aOsc2 oscil aenv * 0.4, cpsmidinn(p4 - 12) * 1.5 + kVib, 1  ; 상위 하모닉스를 줄임

  ; 두 소리 합성
  aOsc = aOsc1 + aOsc2

  ; 부드러운 필터링 적용
  aFilt tone aOsc, 2000  ; 2000Hz 이하의 주파수만 통과 (따뜻한 소리)
  aFilt2 atone aFilt, 3000  ; 고주파 필터링으로 부드럽게

  ; 약한 리버브 적용 (더 따뜻하고 공간감 있는 소리)
  aRevL, aRevR freeverb aFilt2, aFilt2, 0.5, 0.3  ; 리버브 양을 적게 조절

  ; 출력 소리를 절반으로 줄임
  outs aRevL * 0.5, aRevR * 0.5  ; 좌우 채널로 출력
endin

instr deep_bass
  ; 더 부드럽고 웅장한 엔벨로프 설정 (완만하게 올라가고 감쇠)
  aenv linsegr 0.0, 0.1, 0.8, p3 - 0.1, 0.7, 0.1, 0.0
  
  ; 두 옥타브 낮은 베이스 생성 (따뜻함을 유지하기 위해 서브베이스는 약하게)
  aOsc oscil aenv, cpsmidinn(p4 - 24), 1
  
  ; 서브 베이스 추가 (진폭을 줄여 따뜻한 소리로 조정)
  aSubOsc oscil aenv * 0.3, cpsmidinn(p4 - 24) * 0.5, 1
  
  ; 두 소리 합성 (부드러운 베이스를 위해 서브 베이스의 비율을 낮춤)
  aSig = aOsc + aSubOsc

  ; 필터링: 더 부드러운 소리를 만들기 위해 높은 주파수 필터링
  aFilt tone aSig, 500  ; 500Hz 이하의 주파수만 통과
  aFilt2 atone aFilt, 800  ; 추가 필터링으로 고주파 대역을 부드럽게 제거

  ; 약간의 리버브를 추가하여 따뜻한 공간감을 형성
  aRevL, aRevR freeverb aFilt2, aFilt2, 0.3, 0.3  ; 리버브를 적당히 추가하여 따뜻한 소리 유지

  ; 출력 소리를 절반으로 줄임
  outs aRevL * 0.5, aRevR * 0.5  ; 좌우 채널로 출력
endin

</CsInstruments>

<CsScore>
; ftable 정의: 사인파 (기본적으로 사용)
f 1 0 4096 10 1  ; 사인파

; ; 삼각파를 사용할 때 해당 테이블 정의
; f 2 0 4096 7 1  ; 삼각파 정의 (이 부분이 중요)

; melody 악기를 트리거
i "melody" 0 0.1  ; 시작 시간 0, 길이 0.1 (p4는 전달하지 않음)

</CsScore>
</CsoundSynthesizer>
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

  schedule "synth1", ib * 2 * 4 + ib * 10, 0.5, 62
  schedule "synth1", ib * 2 * 4 + ib * 10.25, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 10.5, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 10.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 11, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 11.25, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 11.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 11.75, 0.5, 68
  ; schedule "whistle", ib * 2 * 4 + ib * 10, 1, 96
  schedule "whistle", ib * 2 * 4 + ib * 11, 1, 100
  schedule "whistle", ib * 2 * 4 + ib * 12, 1.5, 94

  schedule "synth1", ib * 2 * 4 + ib * 12, 0.5, 59
  schedule "synth1", ib * 2 * 4 + ib * 12.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 12.5, 0.5, 71
  schedule "synth1", ib * 2 * 4 + ib * 12.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 13, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 13.25, 0.5, 71
  schedule "synth1", ib * 2 * 4 + ib * 13.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 13.75, 0.5, 64

  schedule "synth1", ib * 2 * 4 + ib * 14, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 14.25, 0.5, 67
  schedule "synth1", ib * 2 * 4 + ib * 14.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 14.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 15, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 15.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 15.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 15.75, 0.5, 67

  schedule "whistle", ib * 2 * 4 + ib * 15, 0.5, 96
  schedule "whistle", ib * 2 * 4 + ib * 15.5, 0.5, 94

  //////////////////////////////////////////////////////


  schedule "synth1", ib * 2 * 4 + ib * 16, 0.5, 65
  schedule "synth1", ib * 2 * 4 + ib * 16.25, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 16.5, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 16.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 17, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 17.25, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 17.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 17.75, 0.5, 68

  schedule "whistle", ib * 2 * 4 + ib * 16, 1, 92

  schedule "synth1", ib * 2 * 4 + ib * 18, 0.5, 62
  schedule "synth1", ib * 2 * 4 + ib * 18.25, 0.5, 66
  schedule "synth1", ib * 2 * 4 + ib * 18.5, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 18.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 19, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 19.25, 0.5, 75
  schedule "synth1", ib * 2 * 4 + ib * 19.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 19.75, 0.5, 67

  schedule "whistle", ib * 2 * 4 + ib * 18, 0.5, 92
  schedule "whistle", ib * 2 * 4 + ib * 19, 0.5, 96

  schedule "synth1", ib * 2 * 4 + ib * 20, 0.5, 59
  schedule "synth1", ib * 2 * 4 + ib * 20.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 20.5, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 20.75, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 21, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 21.25, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 21.5, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 21.75, 0.5, 59

  schedule "whistle", ib * 2 * 4 + ib * 20, 0.5, 92
  schedule "whistle", ib * 2 * 4 + ib * 21, 0.5, 89

  schedule "synth1", ib * 2 * 4 + ib * 22, 0.5, 55
  schedule "synth1", ib * 2 * 4 + ib * 22.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 22.5, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 22.75, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 23, 0.5, 53
  schedule "synth1", ib * 2 * 4 + ib * 23.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 23.5, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 23.75, 0.5, 73

  schedule "whistle", ib * 2 * 4 + ib * 22, 0.5, 91
  schedule "whistle", ib * 2 * 4 + ib * 23, 0.5, 92


  schedule "synth1", ib * 2 * 4 + ib * 24, 0.5, 52
  schedule "synth1", ib * 2 * 4 + ib * 24.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 24.5, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 24.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 25, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 25.25, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 25.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 25.75, 0.5, 64

  schedule "whistle", ib * 2 * 4 + ib * 24, 1, 94
  
  schedule "synth1", ib * 2 * 4 + ib * 26, 0.5, 52
  schedule "synth1", ib * 2 * 4 + ib * 26.25, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 26.5, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 26.75, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 27, 0.5, 83
  schedule "synth1", ib * 2 * 4 + ib * 27.25, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 27.5, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 27.75, 0.5, 69

  schedule "whistle", ib * 2 * 4 + ib * 27.5, 0.5, 94
  //////////////////////////////////////////////////////

  schedule "synth1", ib * 2 * 4 + ib * 28, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 28.25, 0.5, 67
  schedule "synth1", ib * 2 * 4 + ib * 28.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 28.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 29, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 29.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 29.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 29.75, 0.5, 72

  schedule "whistle", ib * 2 * 4 + ib * 28, 0.5, 94
  schedule "whistle", ib * 2 * 4 + ib * 28.5, 1, 96

  schedule "synth1", ib * 2 * 4 + ib * 30, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 30.25, 0.5, 67
  schedule "synth1", ib * 2 * 4 + ib * 30.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 30.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 31, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 31.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 31.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 31.75, 0.5, 72

  schedule "whistle", ib * 2 * 4 + ib * 31, 0.5, 94
  schedule "synth_bass", ib * 2 * 4 + ib * 31.75, 1, 48

  schedule "synth1", ib * 2 * 4 + ib * 32, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 32.25, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 32.5, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 32.75, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 33, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 33.25, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 33.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 33.75, 0.5, 68

  schedule "whistle", ib * 2 * 4 + ib * 32, 1, 92 ///////////
  schedule "brass_lead", ib * 2 * 4 + ib * 32, 1, 80
  schedule "synth_bass", ib * 2 * 4 + ib * 32, 0.75, 53
  schedule "synth_bass", ib * 2 * 4 + ib * 33.75, 0.5, 54

  schedule "synth1", ib * 2 * 4 + ib * 34, 0.5, 61
  schedule "synth1", ib * 2 * 4 + ib * 34.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 34.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 34.75, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 35, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 35.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 35.5, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 35.75, 0.5, 64

  schedule "whistle", ib * 2 * 4 + ib * 34, 0.75, 90
  schedule "whistle", ib * 2 * 4 + ib * 35.75, 0.5, 92
  schedule "brass_lead", ib * 2 * 4 + ib * 35, 0.5, 80
  schedule "brass_lead", ib * 2 * 4 + ib * 35, 0.5, 85
  schedule "synth_bass", ib * 2 * 4 + ib * 34, 0.75, 50
  schedule "synth_bass", ib * 2 * 4 + ib * 35.75, 0.5, 51

  schedule "synth1", ib * 2 * 4 + ib * 36, 0.5, 59
  schedule "synth1", ib * 2 * 4 + ib * 36.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 36.5, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 36.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 37, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 37.25, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 37.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 37.75, 0.5, 64

  schedule "whistle", ib * 2 * 4 + ib * 36, 1, 87
  schedule "brass_lead", ib * 2 * 4 + ib * 36, 0.5, 81
  schedule "brass_lead", ib * 2 * 4 + ib * 37, 1, 78
  schedule "synth_bass", ib * 2 * 4 + ib * 36, 0.75, 49
  schedule "synth_bass", ib * 2 * 4 + ib * 37.75, 0.5, 49

  schedule "synth1", ib * 2 * 4 + ib * 38, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 38.25, 0.5, 64
  schedule "synth1", ib * 2 * 4 + ib * 38.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 38.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 39, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 39.25, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 39.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 39.75, 0.5, 64

  schedule "whistle", ib * 2 * 4 + ib * 39.75, 0.5, 90
  schedule "brass_lead", ib * 2 * 4 + ib * 39, 0.5, 76
  schedule "brass_lead", ib * 2 * 4 + ib * 39.5, 0.5, 73
  schedule "synth_bass", ib * 2 * 4 + ib * 38, 0.75, 48
  schedule "synth_bass", ib * 2 * 4 + ib * 39.75, 0.5, 49

  //////////////////////////////////////////////////////

  ////////////////////////////////////////////////////////

  schedule "synth1", ib * 2 * 4 + ib * 40, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 40.25, 0.5, 65
  schedule "synth1", ib * 2 * 4 + ib * 40.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 40.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 41, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 41.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 41.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 41.75, 0.5, 65

  schedule "whistle", ib * 2 * 4 + ib * 40, 0.5, 81
  ; schedule "brass_lead", ib * 2 * 4 + ib * 40, 1, 88
  schedule "synth_bass", ib * 2 * 4 + ib * 40, 0.75, 48
  schedule "synth_bass", ib * 2 * 4 + ib * 41.75, 0.5, 48

  schedule "synth1", ib * 2 * 4 + ib * 42, 0.5, 56
  schedule "synth1", ib * 2 * 4 + ib * 42.25, 0.5, 65
  schedule "synth1", ib * 2 * 4 + ib * 42.5, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 42.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 43, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 43.25, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 43.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 43.75, 0.5, 65

  schedule "whistle", ib * 2 * 4 + ib * 43.5, 0.5, 78
  schedule "whistle", ib * 2 * 4 + ib * 43.75, 0.5, 81
  ; schedule "brass_lead", ib * 2 * 4 + ib * 43.75, 0.5, 94
  schedule "synth_bass", ib * 2 * 4 + ib * 42, 0.75, 46
  schedule "synth_bass", ib * 2 * 4 + ib * 43.75, 0.5, 45

  schedule "synth1", ib * 2 * 4 + ib * 44, 0.5, 55
  schedule "synth1", ib * 2 * 4 + ib * 44.5, 0.5, 67
  schedule "synth1", ib * 2 * 4 + ib * 44.5, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 44.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 45, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 45.25, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 45.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 45.75, 0.5, 67

  schedule "whistle", ib * 2 * 4 + ib * 44, 1, 77
  ; schedule "brass_lead", ib * 2 * 4 + ib * 44, 1.5, 86
  schedule "synth_bass", ib * 2 * 4 + ib * 44, 0.75, 45
  schedule "synth_bass", ib * 2 * 4 + ib * 45.75, 0.25, 45

  schedule "synth1", ib * 2 * 4 + ib * 46, 0.5, 54
  schedule "synth1", ib * 2 * 4 + ib * 46.25, 0.5, 63
  schedule "synth1", ib * 2 * 4 + ib * 46.5, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 46.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 47, 0.5, 76
  schedule "synth1", ib * 2 * 4 + ib * 47.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 47.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 47.75, 0.5, 63

  schedule "whistle", ib * 2 * 4 + ib * 46, 1, 75
  ; schedule "brass_lead", ib * 2 * 4 + ib * 47.5, 0.5, 88
  ; schedule "brass_lead", ib * 2 * 4 + ib * 47.75, 0.5, 86
  schedule "synth_bass", ib * 2 * 4 + ib * 46, 0.75, 44
  schedule "synth_bass", ib * 2 * 4 + ib * 47.75, 0.5, 44

  schedule "synth1", ib * 2 * 4 + ib * 48, 0.5, 60
  schedule "synth1", ib * 2 * 4 + ib * 48.25, 0.5, 65
  schedule "synth1", ib * 2 * 4 + ib * 48.5, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 48.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 49, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 49.25, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 49.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 49.75, 0.5, 65

  schedule "whistle", ib * 2 * 4 + ib * 48, 1, 77
  ; schedule "brass_lead", ib * 2 * 4 + ib * 49.5, 0.5, 84
  schedule "synth_bass", ib * 2 * 4 + ib * 48, 0.75, 50
  schedule "synth_bass", ib * 2 * 4 + ib * 49.75, 0.55, 50

  schedule "synth1", ib * 2 * 4 + ib * 50, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 50.25, 0.5, 65
  schedule "synth1", ib * 2 * 4 + ib * 50.5, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 50.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 51, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 51.25, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 51.5, 0.5, 65
  schedule "synth1", ib * 2 * 4 + ib * 51.75, 0.5, 62

  schedule "whistle", ib * 2 * 4 + ib * 50, 0.75, 74
  schedule "whistle", ib * 2 * 4 + ib * 51.75, 0.5, 77
  ; schedule "brass_lead", ib * 2 * 4 + ib * 50, 0.5, 84
  ; schedule "brass_lead", ib * 2 * 4 + ib * 51, 0.5, 88
  schedule "synth_bass", ib * 2 * 4 + ib * 50, 0.75, 48
  schedule "synth_bass", ib * 2 * 4 + ib * 51.75, 0.55, 48


  //////////////////////////////////////////////////////

  schedule "synth1", ib * 2 * 4 + ib * 52, 0.5, 55
  schedule "synth1", ib * 2 * 4 + ib * 52.25, 0.5, 65
  schedule "synth1", ib * 2 * 4 + ib * 52.5, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 52.75, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 53, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 53.25, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 53.5, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 53.75, 0.5, 74

  schedule "synth1", ib * 2 * 4 + ib * 54, 0.5, 82
  schedule "synth1", ib * 2 * 4 + ib * 54.25, 0.5, 77
  schedule "synth1", ib * 2 * 4 + ib * 54.5, 0.5, 88
  schedule "synth1", ib * 2 * 4 + ib * 54.75, 0.5, 83
  schedule "synth1", ib * 2 * 4 + ib * 55, 0.5, 78
  schedule "synth1", ib * 2 * 4 + ib * 55.25, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 55.5, 0.5, 69
  schedule "synth1", ib * 2 * 4 + ib * 55.75, 0.5, 65

  schedule "whistle", ib * 2 * 4 + ib * 52, 0.5, 74
  schedule "whistle", ib * 2 * 4 + ib * 53, 0.5, 69
  schedule "whistle", ib * 2 * 4 + ib * 54, 0.5, 72
  schedule "whistle", ib * 2 * 4 + ib * 55, 0.5, 74
  ; schedule "brass_lead", ib * 2 * 4 + ib * 52, 0.5, 82
  ; schedule "brass_lead", ib * 2 * 4 + ib * 53, 0.5, 78
  ; schedule "brass_lead", ib * 2 * 4 + ib * 54, 0.5, 80
  ; schedule "brass_lead", ib * 2 * 4 + ib * 55, 0.5, 82
  schedule "synth_bass", ib * 2 * 4 + ib * 52, 0.75, 45
  schedule "synth_bass", ib * 2 * 4 + ib * 53,75, 0.5, 44
  schedule "synth_bass", ib * 2 * 4 + ib * 54, 0.5, 42
  schedule "synth_bass", ib * 2 * 4 + ib * 55.75, 0.5, 40

  schedule "synth1", ib * 2 * 4 + ib * 56, 0.5, 62
  schedule "synth1", ib * 2 * 4 + ib * 56.25, 0.5, 67
  schedule "synth1", ib * 2 * 4 + ib * 56.5, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 56.75, 0.5, 67
  schedule "synth1", ib * 2 * 4 + ib * 57, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 57.25, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 57.5, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 57.75, 0.5, 73

  schedule "synth1", ib * 2 * 4 + ib * 58, 0.5, 83
  schedule "synth1", ib * 2 * 4 + ib * 58.25, 0.5, 80
  schedule "synth1", ib * 2 * 4 + ib * 58.5, 0.5, 73
  schedule "synth1", ib * 2 * 4 + ib * 58.75, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 59, 0.5, 67
  schedule "synth1", ib * 2 * 4 + ib * 59.25, 0.5, 62
  schedule "synth1", ib * 2 * 4 + ib * 59.5, 0.5, 59
  schedule "synth1", ib * 2 * 4 + ib * 59.75, 0.5, 67

  schedule "whistle", ib * 2 * 4 + ib * 56, 0.5, 74
  schedule "whistle", ib * 2 * 4 + ib * 57, 0.5, 80
  schedule "whistle", ib * 2 * 4 + ib * 58, 0.5, 83
  schedule "whistle", ib * 2 * 4 + ib * 59, 0.5, 88
  ; schedule "brass_lead", ib * 2 * 4 + ib * 56, 2.5, 84
  ; schedule "brass_lead", ib * 2 * 4 + ib * 58.75, 0.5, 83
  schedule "synth_bass", ib * 2 * 4 + ib * 56, 0.75, 38
  schedule "synth_bass", ib * 2 * 4 + ib * 57.75, 0.5, 50
  schedule "synth_bass", ib * 2 * 4 + ib * 58, 0.75, 38
  schedule "synth_bass", ib * 2 * 4 + ib * 59.75, 0.5, 38

  schedule "synth1", ib * 2 * 4 + ib * 60, 0.5, 58
  schedule "synth1", ib * 2 * 4 + ib * 60.25, 0.5, 67
  schedule "synth1", ib * 2 * 4 + ib * 60.5, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 60.75, 0.5, 68
  schedule "synth1", ib * 2 * 4 + ib * 61, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 61.25, 0.5, 72
  schedule "synth1", ib * 2 * 4 + ib * 61.5, 0.5, 79
  schedule "synth1", ib * 2 * 4 + ib * 61.75, 0.5, 74

  schedule "synth1", ib * 2 * 4 + ib * 62, 0.5, 82
  schedule "synth1", ib * 2 * 4 + ib * 62.25, 0.5, 79
  schedule "synth1", ib * 2 * 4 + ib * 62.5, 0.5, 86
  schedule "synth1", ib * 2 * 4 + ib * 62.75, 0.5, 84
  schedule "synth1", ib * 2 * 4 + ib * 63, 0.5, 82
  schedule "synth1", ib * 2 * 4 + ib * 63.25, 0.5, 79
  schedule "synth1", ib * 2 * 4 + ib * 63.5, 0.5, 74
  schedule "synth1", ib * 2 * 4 + ib * 63.75, 0.5, 72

  schedule "whistle", ib * 2 * 4 + ib * 60, 01, 86
  schedule "whistle", ib * 2 * 4 + ib * 62, 0.5, 90
  schedule "whistle", ib * 2 * 4 + ib * 62.5, 0.5,88
  schedule "whistle", ib * 2 * 4 + ib * 63, 0.5, 83
  schedule "whistle", ib * 2 * 4 + ib * 63.5, 0.5, 80
  ; schedule "brass_lead", ib * 2 * 4 + ib * 60, 2, 84
  schedule "synth_bass", ib * 2 * 4 + ib * 60, 1, 38
  schedule "synth_bass", ib * 2 * 4 + ib * 63.75, 0.25, 38

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

  schedule "synth1", 0, 0.5, 65
  schedule "synth1", ib * 0.25, 0.5, 68
  schedule "synth1", ib * 0.5, 0.5, 77
  schedule "synth1", ib * 0.75, 0.5, 73

 schedule "synth1", ib * 1, 0.5, 80
  schedule "synth1", ib * 1.25, 0.5, 77
  schedule "synth1", ib * 1.5, 0.5, 73
  schedule "synth1", ib * 1.75, 0.5, 68

  ; 반복 호출
  if p_repeat > 1 then
    schedule "arpeggio2", ib * 2, p3, p4, p_repeat - 1
  endif
endin



instr arpeggio3
  iBPM = 90
  ib = 60 / i(iBPM)
  p_repeat = p5  ; 반복 횟수를 p5로 받음

  schedule "synth1", 0, 0.5, 64
  schedule "synth1", ib * 0.25, 0.5, 68
  schedule "synth1", ib * 0.5, 0.5, 76
  schedule "synth1", ib * 0.75, 0.5, 73

  schedule "synth1", ib * 1, 0.5, 80
  schedule "synth1", ib * 1.25, 0.5, 76
  schedule "synth1", ib * 1.5, 0.5, 73
  schedule "synth1", ib * 1.75, 0.5, 68

  ; 반복 호출
  if p_repeat > 1 then
    schedule "arpeggio2", ib * 2, p3, p4, p_repeat - 1
  endif
endin

instr arpeggio4
  iBPM = 90
  ib = 60 / i(iBPM)
  p_repeat = p5  ; 반복 횟수를 p5로 받음

  schedule "synth1", 0, 0.5, 62
  schedule "synth1", ib * 0.25, 0.5, 68
  schedule "synth1", ib * 0.5, 0.5, 75
  schedule "synth1", ib * 0.75, 0.5, 72

 schedule "synth1", ib * 1, 0.5, 80
  schedule "synth1", ib * 1.25, 0.5, 75
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
  aenv linsegr 0.0, 0.1, 0.5, p3 - 0.2, 0.3, 0.1, 0.0  ; 부드럽게 시작하고 점점 감쇠하는 엔벨로프
  asig poscil aenv, cpsmidinn(p4 - 12), 1  ; 순수하고 청아한 사운드를 위한 사인파 기반

  ; 공간감을 더하는 리버브
  aReverbL, aReverbR freeverb asig, asig, 0.7, 0.4  ; 리버브 적용하여 공간감 형성
  
  outs aReverbL * 0.5, aReverbR * 0.5  ; 좌우 채널 출력
endin

instr synth_bass
  aenv line 0.1, p3, 0.0
  asig oscil aenv, cpsmidinn(p4+12), 1
  outs asig, asig
endin

instr bass
  ; 부드럽고 명확한 베이스 엔벨로프 설정
  aenv linsegr 0.0, 0.05, 0.8, p3 - 0.05, 0.5, 0.05, 0.0  ; 짧은 상승과 감쇠로 명확한 소리
  
  ; 베이스 소리 (기존보다 높은 주파수 필터링)
  asig oscil aenv, cpsmidinn(p4 + 12), 1  ; 사인파 사용 (필터링 전)

  ; 중음역대 필터 적용 (기존보다 높은 주파수를 통과시킴)
  aFilt tone asig, 800  ; 800Hz 이하의 주파수만 통과 (조금 더 밝은 베이스 소리)
  aFilt2 atone aFilt, 1200  ; 고주파수 필터링으로 약간 더 부드럽게

  ; 출력 크기를 높여서 더 존재감 있게 조정
  outs aFilt2 * 0.5, aFilt2 * 0.5  ; 소리 크기 약간 증가
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
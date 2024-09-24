<CsoundSynthesizer>
<CsOptions>
-odac -m4  ; 오디오 출력 및 모니터링 옵션
</CsOptions>

<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

; 청아하고 신디사이저 느낌의 피아노
instr synth_piano
  aenv linsegr 0.0, 0.1, 0.5, p3 - 0.2, 0.3, 0.1, 0.0  ; 부드럽게 시작하고 점점 감쇠하는 엔벨로프
  asig poscil aenv, cpsmidinn(p4), 1  ; 순수하고 청아한 사운드를 위한 사인파 기반

  ; 공간감을 더하는 리버브
  aReverbL, aReverbR freeverb asig, asig, 0.7, 0.4  ; 리버브 적용하여 공간감 형성
  
  outs aReverbL * 0.5, aReverbR * 0.5  ; 좌우 채널 출력
endin

; 아르페지오 반주
instr arpeggio
  aenv linsegr 0.0, 0.05, 0.6, p3 - 0.1, 0.4, 0.05, 0.0  ; 빠른 상승과 감쇠로 잔잔한 아르페지오 표현
  asig oscil aenv, cpsmidinn(p4), 1  ; 순수한 사운드

  ; 잔잔하고 맑은 리버브 추가
  aReverbL, aReverbR freeverb asig, asig, 0.6, 0.3  ; 리버브 적용하여 잔잔함 유지
  outs aReverbL * 0.5, aReverbR * 0.5  ; 좌우 채널 출력
endin

</CsInstruments>

<CsScore>
; 사인파 테이블 정의
f 1 0 4096 10 1  ; 사인파

; 피아노 멜로디: 순수하고 청아한 소리
i "synth_piano" 0 1 60  ; C4
i "synth_piano" 1 1 64  ; E4
i "synth_piano" 2 1 67  ; G4
i "synth_piano" 3 1 71  ; B4

; 아르페지오 반주 (C 메이저 장조)
i "arpeggio" 0 4 60  ; C4
i "arpeggio" 0.25 4 64  ; E4
i "arpeggio" 0.5 4 67  ; G4
i "arpeggio" 0.75 4 72  ; C5

; 두 번째 마디 (F 메이저 장조)
i "arpeggio" 4 4 65  ; F4
i "arpeggio" 4.25 4 69  ; A4
i "arpeggio" 4.5 4 72  ; C5
i "arpeggio" 4.75 4 76  ; F5

; 세 번째 마디 (G 메이저 장조)
i "arpeggio" 8 4 67  ; G4
i "arpeggio" 8.25 4 71  ; B4
i "arpeggio" 8.5 4 74  ; D5
i "arpeggio" 8.75 4 79  ; G5

; 네 번째 마디 (C 메이저 아르페지오 반복)
i "arpeggio" 12 4 60  ; C4
i "arpeggio" 12.25 4 64  ; E4
i "arpeggio" 12.5 4 67  ; G4
i "arpeggio" 12.75 4 72  ; C5

; 추가된 멜로디 - 새로운 조합
; C 메이저 (발전된 멜로디 라인)
i "synth_piano" 16 1 72  ; C5
i "synth_piano" 17 1 76  ; E5
i "synth_piano" 18 1 79  ; G5
i "synth_piano" 19 1 83  ; B5

; 아르페지오: 새로운 진행 (C 메이저)
i "arpeggio" 16 4 72  ; C5
i "arpeggio" 16.25 4 76  ; E5
i "arpeggio" 16.5 4 79  ; G5
i "arpeggio" 16.75 4 83  ; B5

; F 메이저 (고음 추가)
i "synth_piano" 20 1 65  ; F4
i "synth_piano" 21 1 69  ; A4
i "synth_piano" 22 1 72  ; C5
i "synth_piano" 23 1 76  ; F5

; 아르페지오 (새로운 화음 추가)
i "arpeggio" 20 4 65  ; F4
i "arpeggio" 20.25 4 69  ; A4
i "arpeggio" 20.5 4 72  ; C5
i "arpeggio" 20.75 4 76  ; F5

; G 메이저 (긴장감 상승)
i "synth_piano" 24 1 67  ; G4
i "synth_piano" 25 1 71  ; B4
i "synth_piano" 26 1 74  ; D5
i "synth_piano" 27 1 79  ; G5

; 아르페지오: 상승 패턴
i "arpeggio" 24 4 67  ; G4
i "arpeggio" 24.25 4 71  ; B4
i "arpeggio" 24.5 4 74  ; D5
i "arpeggio" 24.75 4 79  ; G5

; 마무리: C 메이저 아르페지오로 돌아감
i "arpeggio" 28 4 60  ; C4
i "arpeggio" 28.25 4 64  ; E4
i "arpeggio" 28.5 4 67  ; G4
i "arpeggio" 28.75 4 72  ; C5
</CsScore>
</CsoundSynthesizer>
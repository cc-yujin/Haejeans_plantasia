<CsoundSynthesizer>
<CsOptions>
-odac -m4  ; 오디오 출력 및 모니터링 옵션
</CsOptions>

<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

; 우주 느낌의 패드 사운드 생성
instr 1
  iamp = p4
  icps = p5
  
  ; 저주파 진동(LFO)로 톤 변화
  kfreq oscili 0.09, 0.05
  asig vco2 iamp, icps + kfreq
  
  ; 리버브와 딜레이 효과 추가
  aL, aR reverbsc asig, asig, 0.85, 10000
  outs aL, aR
endin

; 신비로운 배경 톤
instr 2
  iamp = p4
  icps = p5
  
  ; 천천히 변화하는 피치
  aenv linseg 0, 0.5, 1, p3-0.5, 0
  asig poscil iamp * aenv, icps
  
  ; 리버브 적용
  aL, aR reverbsc asig, asig, 0.95, 12000
  outs aL, aR
endin

; 별의 반짝임을 표현하는 소리
instr 3
  iamp = p4
  ifreq = p5
  
  ; 짧은 펄스 톤을 불규칙하게 재생
  aenv linseg 0, 0.05, 1, 0.1, 0
  asig poscil iamp * aenv, ifreq
  aL, aR reverbsc asig, asig, 0.7, 8000
  
  outs aL, aR
endin
</CsInstruments>

<CsScore>
; 첫 번째 패드 사운드
i 1 0 60 0.05 120  ; 60초간 220Hz 패드 사운드 재생
i 1 + 60 60 0.1 110  ; 60초간 110Hz 패드 사운드 재생

; 두 번째 신비로운 톤
i 2 0 60 0.1 330  ; 60초간 330Hz 음 재생
i 2 + 60 60 0.1 440  ; 60초간 440Hz 음 재생
i 2 + 120 60 0.1 220  ; 60초간 220Hz 음 재생

i 3 1 0.2 0.3 800
i 3 1.2 0.2 0.3 1200
i 3 1.4 0.2 0.3 1500
i 3 1.6 0.2 0.3 1000
i 3 1.8 0.2 0.3 1400
i 3 2.0 0.2 0.3 1800

i 3 3 0.2 0.3 800
i 3 3.2 0.2 0.3 1200
i 3 3.4 0.2 0.3 1500
i 3 3.6 0.2 0.3 1000
i 3 3.8 0.2 0.3 1400
i 3 3.0 0.2 0.3 1800

i 3 7 0.2 0.3 800
i 3 7.2 0.2 0.3 1200
i 3 7.4 0.2 0.3 1500

i 3 8 0.2 0.3 800
i 3 8.2 0.2 0.3 1200
i 3 8.4 0.2 0.3 1500
i 3 8.6 0.2 0.3 1000
i 3 8.8 0.2 0.3 1400
i 3 8.0 0.2 0.3 1800

i 3 10.6 0.2 0.3 1000
i 3 10.8 0.2 0.3 1400
i 3 10.0 0.2 0.3 1800

i 3 11.2 0.2 0.3 1200
i 3 11.4 0.2 0.3 1500
i 3 11.6 0.2 0.3 1000

e
</CsScore>
</CsoundSynthesizer>

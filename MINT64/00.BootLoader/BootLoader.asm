[ORG 0x00]
[BITS 16]

SECTION .text

mov ax, 0xB800                          ; AX 레지스터에 0xB800 복사
mov ds, ax                              ; DS 세그먼트 레지스터에 AX 레지스터의 값(0xB800)을 복사

mov byte [0x00], 'M'                    ; DS 세그먼트:오프셋 0xB800:0x0000에 'M'을 복사
mov byte [0x01], 0x4A                   ; DS 세그먼트:오프셋 0xB800:0x0001에 0x4A(빨간 배경에 밝은 녹색) 복사

jmp $

times 510 - ($ - $$)    db      0x00    ; $ : current line's address
                                        ; $$ : current section's(.text) base address
                                        ; $ - $$ : 현재 섹션을 기준으로 하는 Offset
                                        ; 510 - ($ - $$) : 현재부터 어드레스 510까지
                                        ; time : 반복 수행
                                        ; 현재 위치에서 어드레스 510까지 0x00으로 채움

db 0x55 ; 1 바이트를 선언하고 값은 0x55
db 0xAA ; 1 바이트를 선언하고 값은 0xAA
        ; 어드레스 511, 512에 0x55, 0xAA를 써서 부트 섹터로 표기
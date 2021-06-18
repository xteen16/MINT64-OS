[ORG 0x00]
[BITS 16]

SECTION .text

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
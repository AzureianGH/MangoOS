; LIB HYDRIX GDT INIT
; MADE 2024 (C) AQUANITE

global _loadGDTandTSS_S
_loadGDTandTSS_S:
    lgdt [rdi]
    mov ax, 0x40
    ltr ax

    mov ax, 0x10
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ss, ax
    
    pop rdi
    mov rax, 0x08
    push rax
    push rdi
    retfq
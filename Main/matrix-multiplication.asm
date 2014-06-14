; Multiplikation zweier Matrizen A(mxn) x B(nxm)

name "matrix-multiplication"
include 'emu8086.inc'

data segment
	matrixA db 3, 2, 1, 1, 0, 2
	laengeA db 3
	hoeheA  db 2
	matrixB db 1, 2, 0, 1, 4, 0
	laengeB db 2
	hoeheB  db 3   
	msg db "2", 0dh, 0ah, '$'
ends

stack segment
	dw   128  dup(0)
ends

code segment
start:
; set segment registers:
	mov ax, data
	mov ds, ax
	mov es, ax
	
	;add your code here
	
	;mov msg[0], 2h 
	mov al, msg[0]
    mov ah, 09h
    int 21h 
	
    ;mov al, matrixB[0]
    ;mov ah, 0eh
    ;int 10h
	
	; wait for any key....    
	mov ah, 1
	int 21h

	mov ax, 4c00h ; exit to operating system.
	int 21h    
ends

end start ; set entry point and stop the assembler.

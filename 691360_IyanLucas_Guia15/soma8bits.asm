section .data                           ;Data segment
   userMsg db 'Por favor, digite um numero: ' ;Ask the user to enter a number
   lenUserMsg equ $-userMsg             ;The length of the message
   dispMsg db 'You have entered: '
   lenDispMsg equ $-dispMsg                 

section .bss           ;Uninitialized data
   num resb 5
	
section .text          ;Code Segment
   global _start
	
_start:                 ;User prompt
   mov eax, 4           ;Syscall WRITE
   mov ebx, 1           ;Syscall print tela
   mov ecx, userMsg     ;mover a mensagem pro ECX
   mov edx, lenUserMsg  ;mover o tamanho da string pro edx
   int 80h              ;Interrupt hardware

   ;Read and store the user input
   mov eax, 3           ;Syscall READ
   mov ebx, 2           
   mov ecx, num  
   mov edx, 5          ;5 bytes (numeric, 1 for sign) of that information
   int 80h
	
   ;Output the message 'The entered number is: '
   mov eax, 4
   mov ebx, 1
   mov ecx, dispMsg
   mov edx, lenDispMsg
   int 80h  

   ;Output the number entered
   mov eax, 4
   mov ebx, 1
   mov ecx, num
   mov edx, 5
   int 80h  
    
   ; Exit code
   mov eax, 1
   mov ebx, 0
   int 80h
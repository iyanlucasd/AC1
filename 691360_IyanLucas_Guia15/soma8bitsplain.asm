SYS_EXIT  equ 1
SYS_READ  equ 3
SYS_WRITE equ 4
STDIN     equ 0
STDOUT    equ 1

section .data                           ;Data segment
   msg1 db "Digite um numero ", 0xA,0xD 
   len1 equ $- msg1 

   msg2 db "Digite outro numero", 0xA,0xD 
   len2 equ $- msg2 

   msg3 db "A soma eh: "
   len3 equ $- msg3     
      
   msg4 db "Digite o subtraendo", 0xA,0xD 
   len4 equ $- msg4       

   msg5 db "O total eh", 0xA,0xD 
   len5 equ $- msg5       


segment .bss

   num1 resb 2 
   num2 resb 2 
   num3 resb 2 
   num4 resb 2 
   res resb 1    

section	.text
   global _start    ;must be declared for using gcc
	
_start:             ;tell linker entry point
   mov eax, SYS_WRITE         
   mov ebx, STDOUT         
   mov ecx, msg1         
   mov edx, len1 
   int 0x80                

   mov eax, SYS_READ 
   mov ebx, STDIN  
   mov ecx, num1 
   mov edx, 2
   int 0x80            

   mov eax, SYS_WRITE        
   mov ebx, STDOUT         
   mov ecx, msg2          
   mov edx, len2         
   int 0x80

   mov eax, SYS_READ  
   mov ebx, STDIN  
   mov ecx, num2 
   mov edx, 2
   int 0x80        

   mov eax, SYS_WRITE         
   mov ebx, STDOUT         
   mov ecx, msg3          
   mov edx, len3         
   int 0x80

   ; moving the first number to eax register and second number to ebx
   ; and subtracting ascii '0' to convert it into a decimal number
	
   mov eax, [num1]
   sub eax, '0'
	
   mov ebx, [num2]
   sub ebx, '0'

   ; add eax and ebx
   add eax, ebx
   ; add '0' to to convert the sum from decimal to ASCII
   add eax, '0'

   ; storing the sum in memory location res
   mov [res], eax

   ; print the sum 
   mov eax, SYS_WRITE        
   mov ebx, STDOUT
   mov ecx, res         
   mov edx, 1        
   int 0x80

   mov eax, SYS_WRITE        
   mov ebx, STDOUT         
   mov ecx, msg4          
   mov edx, len4         
   int 0x80

   mov eax, SYS_READ  
   mov ebx, STDIN  
   mov ecx, num3 
   mov edx, 2
   int 0x80        

   mov eax, SYS_WRITE         
   mov ebx, STDOUT         
   mov ecx, msg5          
   mov edx, len5         
   int 0x80

   mov eax, res
   sub eax, '0'

   mov ebx, [num3]
   sub ebx, '0'

   sub eax, ebx
   sub eax, '0'

   mov [num4], eax

   mov eax, SYS_WRITE        
   mov ebx, STDOUT
   mov ecx, res         
   mov edx, 1        
   int 0x80


exit:    
   
   mov eax, SYS_EXIT   
   xor ebx, ebx 
   int 0x80
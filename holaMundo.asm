org 100h
mov cx,20
mov bx,0
mov ax,const
.model small

.data 
 mensaje1 db "Hola mundo ",0ah,0dh,"$" ;07h suena a la hora de ejecutar

 
.code 

inicio:
mov [bx],ax
add bx,2
dec ax
mov ax,@data
mov ds,ax
mov ah,9
lea dx,mensaje1
int 21h  

loop inicio

ret  
"
 
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,mensaje1
    int 21h  
    
    hlt 
    
    main endp  
"   
const equ 0ff24h ;

end 
    
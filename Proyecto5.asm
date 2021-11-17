.Model Samll
.Stack 64 
 

.data 
    msj Db 0ah,0dh,  'Digite el valor del motor: ','$'
    msj2 Db 0ah,0dh, "El promedio es: ","$"
    motor1 dw 0
    motor2 dw 0                      
    motor3 dw 0 
    motor4 dw 0
    motor5 dw 0
  
    prom1 db 0
    prom2 db 0
    prom3 db 0
    prom4 db 0
    prom5 db 0
      
.code
inicio:
    mov cx,05h ;numero de calificaciones a pedir
    mov bl,0000h
    mov al,0000h
    mov ax,@data 
    
    ;mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    ;mov ah,09
    ;mov dx,offset msj
    ;int 21H     

Pedir: 
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset msj
    int 21H 
    
    
    mov ah,01h  
    int 21h 
   
    sub al,0
    add bl,al ;Hacemos la suma de los valores de los motores
    loop Pedir ;repite ciclo(iteracion)
      
    mov motor1,bx
    
    jmp promedio
    jmp inicio2    
promedio:
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset msj2
    int 21H 
    
    mov ax,motor1
    mov bl,5 
    div bl ;divimos AX entre bl
    
    mov bl,al ;movemos el resultado a bl para imprimir
    
    mov ah,02h
    mov dl,al
    int 21h 
    mov prom1,dl
inicio2:
    mov cx,05h ;numero de calificaciones a pedir
    mov bl,0000h
    mov al,0000h
    mov ax,@data 
    
Pedir2: 
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset msj
    int 21H 
    
    
    mov ah,01h  
    int 21h 
   
    sub al,0
    add bl,al ;Hacemos la suma de los valores de los motores
    loop Pedir2 ;repite ciclo(iteracion)
      
    mov motor2,bx
    
    jmp promedio2    
promedio2:
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset msj2
    int 21H 
    
    mov ax,motor2
    mov bl,5 
    div bl ;divimos AX entre bl
    
    mov bl,al ;movemos el resultado a bl para imprimir
    
    mov ah,02h
    mov dl,al
    int 21h 
    mov prom2,dl   
inicio3:
    mov cx,05h ;numero de calificaciones a pedir
    mov bl,0000h
    mov al,0000h
    mov ax,@data 
    
Pedir3: 
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset msj
    int 21H 
    
    
    mov ah,01h  
    int 21h 
   
    sub al,0
    add bl,al ;Hacemos la suma de los valores de los motores
    loop Pedir3 ;repite ciclo(iteracion)
      
    mov motor3,bx
    
    jmp promedio3    
promedio3:
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset msj2
    int 21H 
    
    mov ax,motor3
    mov bl,5 
    div bl ;divimos AX entre bl
    
    mov bl,al ;movemos el resultado a bl para imprimir
    
    mov ah,02h
    mov dl,al
    int 21h 
    mov prom3,dl  

inicio4: 
    ; borra el contenido de la pantalla
    mov ah,0Fh 
    int 10h  
    mov ah,0
    INT 10h
    
    mov cx,05h ;numero de calificaciones a pedir
    mov bl,0000h
    mov al,0000h
    mov ax,@data 
    
Pedir4: 
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset msj
    int 21H 
    
    
    mov ah,01h  
    int 21h 
   
    sub al,0
    add bl,al ;Hacemos la suma de los valores de los motores
    loop Pedir4 ;repite ciclo(iteracion)
      
    mov motor4,bx
    
    jmp promedio4    
promedio4:
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset msj2
    int 21H 
    
    mov ax,motor4
    mov bl,5 
    div bl ;divimos AX entre bl
    
    mov bl,al ;movemos el resultado a bl para imprimir
    
    mov ah,02h
    mov dl,al
    int 21h 
    mov prom4,dl

inicio5:
    mov cx,05h ;numero de calificaciones a pedir
    mov bl,0000h
    mov al,0000h
    mov ax,@data 
    
Pedir5: 
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset msj
    int 21H 
    
    
    mov ah,01h  
    int 21h 
   
    sub al,0
    add bl,al ;Hacemos la suma de los valores de los motores
    loop Pedir5 ;repite ciclo(iteracion)
      
    mov motor5,bx
    
    jmp promedio5    
promedio5:
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset msj2
    int 21H 
    
    mov ax,motor5
    mov bl,5 
    div bl ;divimos AX entre bl
    
    mov bl,al ;movemos el resultado a bl para imprimir
    
    mov ah,02h
    mov dl,al
    int 21h 
    mov prom5,dl    
    
    
    
salir:
    mov ah,04ch
    int 21h
 
end inicio
    
    
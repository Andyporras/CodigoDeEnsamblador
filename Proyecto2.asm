include 'emu8086.inc' 

org 100h

.data 
      
    ; variables  
    encabezado1 Db 13,10, "                             Tecnologico de Costa Rica","$"
    encabezado2 Db 13,10, "                             Escuela de Ingenieria en Computacion","$"
    encabezado3 Db 13,10, "                             Profesor:","$"
    encabezado4 Db 13,10, "                             Johel Godinez Benavides","$"
    encabezado5 Db 13,10, "                             Nombre del Estudiante:","$"
    encabezado6 Db 13,10, "                             Andy Porras Romero","$"
    encabezado7 Db 13,10, "                             Carnet:","$"
    encabezado8 Db 13,10, "                             2021067834","$"
    
  
    
    ingreseMotor1 Db 0ah,0dh, 'Digite el valor del motor 1: ','$'
    ingreseMotor2 Db 0ah,0dh, 'Digite el valor del motor 2: ','$'
    ingreseMotor3 Db 0ah,0dh, 'Digite el valor del motor 3: ','$'
    ingreseMotor4 Db 0ah,0dh, 'Digite el valor del motor 4: ','$'
    ingreseMotor5 Db 0ah,0dh, 'Digite el valor del motor 5: ','$'
    
    
    
    msj2 Db 0ah,0dh, "El promedio es: ","$"
    msj3 db 13,10, "                             Bienvenido",13,10,"$"
    enter db 13,10, "$"
    punto db ".","$" 
    
    mPromedio1 db 13,10, "El promedio del motor 1 es: ","$"  
    mPromedio2 db 13,10, "El promedio del motor 2 es: ","$"  
    mPromedio3 db 13,10, "El promedio del motor 3 es: ","$"  
    mPromedio4 db 13,10, "El promedio del motor 4 es: ","$"  
    mPromedio5 db 13,10, "El promedio del motor 5 es: ","$"
    
    mvarianza1 db 13,10, "El valor de la varianza 1 es :","$"
    mvarianza2 db 13,10, "El valor de la varianza 2 es :","$"
    mvarianza3 db 13,10, "El valor de la varianza 3 es :","$"
    mvarianza4 db 13,10, "El valor de la varianza 4 es :","$"
    mvarianza5 db 13,10, "El valor de la varianza 5 es :","$"
      
    
    titulo1 db 13,10, "Motor 1","$"
    titulo2 db 13,10, "Motor 2","$"
    titulo3 db 13,10, "Motor 3","$"
    titulo4 db 13,10, "Motor 4","$"
    titulo5 db 13,10, "Motor 5","$"
    
    
    
    M1valor1 db 0
    M1valor2 db 0
    M1valor3 db 0
    M1valor4 db 0
    M1valor5 db 0
    
    M2valor1 db 0
    M2valor2 db 0
    M2valor3 db 0
    M2valor4 db 0
    M2valor5 db 0
    
    M3valor1 db 0
    M3valor2 db 0
    M3valor3 db 0
    M3valor4 db 0
    M3valor5 db 0
    
    M4valor1 db 0
    M4valor2 db 0
    M4valor3 db 0
    M4valor4 db 0
    M4valor5 db 0
    
    M5valor1 db 0
    M5valor2 db 0
    M5valor3 db 0
    M5valor4 db 0
    M5valor5 db 0 
    
    
            
            
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
    
    promdecimal1 db 0
    promdecimal2 db 0
    promdecimal3 db 0
    promdecimal4 db 0
    promdecimal5 db 0
    
      
.code   
    
inicio:   

    ;Muestra un mensaje segun la variable a utilizar
    mov ah,9
    lea dx,encabezado1                             
    int 21h                                        
    
    ; Limpia las ax y dx
    mov ax,0000h
    mov dx,0000h
       
    ;Muestra un mensaje en la consola segun la variable a utilizar  
    mov ah,9
    lea dx,encabezado2
    int 21h

    ; Limpia ax y dx        
    mov ax,0000h
    mov dx,0000h

    ;Muestra un mensaje en la consola segun la variable a utilizar         
    mov ah,9
    lea dx,encabezado3
    int 21h

    ; Limpia ax y dx
    mov ax,0000h
    mov dx,0000h 
    
    ;Muestra un mensaje en la consola segun la variable a utilizar
    mov ah,9
    lea dx,encabezado4
    int 21h     
    
    ; Limpia ax y dx
    mov ax,0000h
    mov dx,0000h
    
    ;Muestra un mensaje en la consola segun la variable a utilizar
    mov ah,9
    lea dx,encabezado5
    int 21h     
    
    ; Limpia ax y dx
    mov ax,0000h
    mov dx,0000h

    ;Muestra un mensaje en la consola segun el string que tenga la variable a utilizar
    mov ah,9
    lea dx,encabezado6
    int 21h

    ; Muestra un mensaje en la consola segun el string que tenga la variable a utilizar    
    mov ah,9
    lea dx,encabezado7
    int 21h 
    
    ; Muestra un mensaje en la consola segun el string que tenga la variable a utilizar
    mov ah,9
    lea dx,encabezado8
    int 21h           
    
    ; Muestra un mensaje en la consola segun el string que tenga la variable a utilizar(salto de linea)
    mov ah,9
    lea dx,enter
    int 21h 

    ; Muestra un mensaje en la consola segun el string que tenga la variable a utilizar(salto de linea)    
    mov ah,9
    lea dx,enter
    int 21h
    
   
    ; limpia cx,bl y al
    mov cx,0000h
    mov bl,0000h
    mov al,0000h
     

Pedir:  
    ; Muestra un mensaje en la consola segun el string que tenga la variable a utilizar
    mov ah,9
    lea dx,titulo1
    int 21h 
    
    ; Muestra un mensaje en la consola segun el string que tenga la variable a utilizar(Salto de linea)
    mov ah,9
    lea dx,enter
    int 21h

    ; Limpia bl,al y cx
    mov bl,0000h
    mov al,0000h
    mov cx,0000h

    ;carga las variables a ax para poder utilizar las variables que contiene string
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset ingreseMotor1
    int 21H 
    
    ;Solicita el valor del la decena del motor 1
    mov ah,01h  
    int 21h 
   
    sub al,48 ; transforma el valor de ascci a decimal
    
    ;Multiplica el valor por 10 para que el primer valor sea una decena en vez de una unidad    
    mov dl,10
    mul dl
    
    ;Suma el valor de la variable al valor de la variable cl
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores

    ;solicita el valor del la unidad del motor 1
    mov ah,01h  
    int 21h 
 
   
    sub al,48; transforma el valor de ascci a decimal

    ; suma la decena y la unidad ingresado por el usuario 
    add cl,al
    add bl,al
    
    ; almacena el valor en la variable M1valor1
    mov M1valor1,cl
    mov cl,0000h; limpia la variable cl
    
    mov ax,0000h ; limpia la variable ax

    ;Interrupcion para mostrar el mensaje que contiene la variable ingreseMotor1
    mov ah,09
    mov dx,offset ingreseMotor1
    int 21H 
    

    ; Solicita el valor del la decena del motor 1  
    mov ah,01h  
    int 21h 
 
   
    sub al,48 ; transforma el valor de ascci a decimal

    ;Multiplica el valor por 10 para que el primer valor sea la decena en vez de una unidad
    mov dl,10
    mul dl
    

    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    ; Soliciata el valor de la unidad del motor 1
    mov ah,01h  
    int 21h 
 
   
    sub al,48 ; transforma el valor de ascci a decimal
   
    ; suma la decena y la unidad ingresado por el usuario
    add bl,al
    add cl,al
    
    ; almacena el valor en la variable M1valor2
    mov M1valor2,cl
    mov cl,0000h
    
    mov ax,0000h ; limpia la variable ax

    ;Interrupcion para mostrar el mensaje que contiene la variable ingreseMotor1       
    mov ah,09
    mov dx,offset ingreseMotor1
    int 21H 
    
    ; Solicita el valor del la decena del motor 1 
    mov ah,01h  
    int 21h 
 
   
    sub al,48 ; transforma el valor de ascci a decimal
    
    ;Multiplica el valor por 10 para que el primer valor sea la decena en vez de una unidad
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    ; Soliciata el valor de la unidad del motor 1
    mov ah,01h  
    int 21h 
 
   
    sub al,48; transforma el valor de ascci a decimal
    
    ; suma la decena y la unidad ingresado por el usuario
    add cl,al
    add bl,al
     
    mov M1valor3,cl ; almacena el valor en la variable M1valor3
    mov cx,0000h ; limpia la variable cx
    
    ;Interrupcion para mostrar el mensaje que contiene la variable ingreseMotor1
    mov ah,09
    mov dx,offset ingreseMotor1
    int 21H 
    
    ; Solicita el valor del la decena del motor 1
    mov ah,01h  
    int 21h 
 
   
    sub al,48 ; transforma el valor de ascci a decimal
    
    ;Multiplica el valor por 10 para que el primer valor sea la decena en vez de una unidad
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    ; Soliciata el valor de la unidad del motor 1
    mov ah,01h  
    int 21h 
 
   
    sub al,48; transforma el valor de ascci a decimal
    
    ; suma la decena y la unidad ingresado por el usuario
    add cl,al
    add bl,al
    
    mov M1valor4,cl; almacena el valor en la variable M1valor4
    mov cx,0000h ; limpia la variable cx
    
    ;Interrupcion para mostrar el mensaje que contiene la variable ingreseMotor1
    mov ah,09
    mov dx,offset ingreseMotor1
    int 21H 
    
    ; Solicita el valor del la decena del motor 1
    mov ah,01h  
    int 21h 
 
    sub al,48 ; transforma el valor de ascci a decimal
    ;Multiplica el valor por 10 para que el primer valor sea la decena en vez de la unidad
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    ; Soliciata el valor de la unidad del motor 1
    mov ah,01h  
    int 21h 
 
   
    sub al,48; transforma el valor de ascci a decimal
    ; suma la decena y la unidad ingresado por el usuario
    add bl,al
    add cl,al
    
    mov M1valor5,cl; almacena el valor en la variable M1valor5
    mov ax,0000h ; limpia la variable ax
    
    mov motor1,bx
    
    jmp promedio ;salta a la etiqueta promedio
       
promedio:
    ;carga las variables a ax
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,9
    lea dx,enter
    int 21h 
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset mPromedio1
    int 21H 
        
    mov ax,0000h ; limpia la variable ax

    mov ax,motor1; carga el valor de la variable motor1 en la variable ax
    mov bl,5 
    DIV bl ;divimos AX entre bl
    
    mov bl,al ; almacena el valor de la division en la variable bl
    mov cl,ah ; almacena los decimales en la variable cl
    
    mov prom1,bl ; almacena el valor de la division en la variable prom1
    mov promdecimal1,cl ; almacena los decimales en la variable promdecimal1
    
    mov ax,0000h; limpia la variable ax

    mov al,bl ; carga el valor de la variable bl en la variable al
    
    call print_num ;imprime el valor que contiene la variable al
    
    mov ax,0000h ; limpia la variable ax
    
    ;Interrupcion para mostrar un mensaje
    mov ah,09
    lea dx,punto
    int 21h
    
    mov ax,0000h ; limpia la variable ax 
    
    
    mov al,cl ; carga el valor de la variable cl en la variable al
    mov dl,2  ; le damos el valor de 2 a dl
    mul dl ; multiplicamos al valor de la variable al por el valor de la variable dl


    
    call print_num; imprime el valor que contiene la variable al
    
    ; muestra el string que contiene la variable enter
    mov ah,9
    lea dx,enter
    int 21h 
    
    mov cx,0000h ;limpia la variable cx
    mov bx,0000h ;limpia la variable bx
    mov ax,0000h ;limpia la variable ax
    mov dx,0000h ;limpia la variable dx
    
    jmp varianza1 ;salte a la etiqueta varianza1


Pedir2:  
    mov ah,9
    lea dx,titulo2
    int 21h 
    
    mov ah,9
    lea dx,enter
    int 21h
    
    mov bl,0000h
    mov al,0000h
    mov cx,0000h
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset ingreseMotor2
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M2valor1,cl
    mov cl,0000h
    
    mov ax,0000h    
    
    mov ah,09
    mov dx,offset ingreseMotor2
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add bl,al
    add cl,al
    
    mov M2valor2,cl
    mov cl,0000h
    
    mov ax,0000h 
                
    mov ah,09
    mov dx,offset ingreseMotor2
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M2valor3,cl
    mov cx,0000h 
    
    mov ah,09
    mov dx,offset ingreseMotor2
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M2valor4,cl
    mov cx,0000h 
    
    mov ah,09
    mov dx,offset ingreseMotor2
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add bl,al
    add cl,al
    
    mov M2valor5,cl
    mov ax,0000h 
    
    
    
    ;loop Pedir ;repite ciclo(iteracion)
      
    mov motor2,bx
        
promedio2:
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,9
    lea dx,enter
    int 21h 
    
    mov ah,09
    mov dx,offset mPromedio2
    int 21H 
        
    mov ax,0000h
    mov ax,motor2
    mov bl,5 
    DIV bl ;divimos AX entre bl
    
    mov bl,al
    mov cl,ah       
    
    mov prom2,bl
    mov promdecimal2,cl
    
    mov ax,0000h
    mov al,bl
    
    call print_num 
    
    mov ax,0000h
    mov ah,09
    lea dx,punto
    int 21h
    
    mov ax,0000h 
    
    mov al,cl
    mov dl,2    
    mul dl

    
    call print_num
    
    
    mov ah,9
    lea dx,enter
    int 21h 
    
    mov cx,0000h ;numero de calificaciones a pedir
    mov bx,0000h
    mov ax,0000h
    mov dx,0000h 
    
     jmp varianza2
    
    
    
;Motor 3 
Pedir3:  
    mov ah,9
    lea dx,titulo3
    int 21h 
    
    mov ah,9
    lea dx,enter
    int 21h
    
    mov bl,0000h
    mov al,0000h
    mov cx,0000h
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset ingreseMotor3
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M3valor1,cl
    mov cl,0000h
    
    mov ax,0000h    
    
    mov ah,09
    mov dx,offset ingreseMotor3
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add bl,al
    add cl,al
    
    mov M3valor2,cl
    mov cl,0000h
    
    mov ax,0000h 
                
    mov ah,09
    mov dx,offset ingreseMotor3
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M3valor3,cl
    mov cx,0000h 
    
    mov ah,09
    mov dx,offset ingreseMotor3
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M3valor4,cl
    mov cx,0000h 
    
    mov ah,09
    mov dx,offset ingreseMotor3
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add bl,al
    add cl,al
    
    mov M3valor5,cl
    mov ax,0000h 
    
    
    
    ;loop Pedir ;repite ciclo(iteracion)
      
    mov motor3,bx
        
promedio3:
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,9
    lea dx,enter
    int 21h 
    
    mov ah,09
    mov dx,offset mPromedio3
    int 21H 
        
    mov ax,0000h
    mov ax,motor3
    mov bl,5 
    DIV bl ;divimos AX entre bl
    
    mov bl,al
    mov cl,ah       
    
    mov prom3,bl
    mov promdecimal3,cl
    
    mov ax,0000h
    mov al,bl
    
    call print_num 
    
    mov ax,0000h
    mov ah,09
    lea dx,punto
    int 21h
    
    mov ax,0000h 
    
    mov al,cl
    mov dl,2    
    mul dl

    
    call print_num
    
    
    mov ah,9
    lea dx,enter
    int 21h 
    
    mov cx,0000h ;numero de calificaciones a pedir
    mov bx,0000h
    mov ax,0000h
    mov dx,0000h
    
    
    jmp varianza3
     
                   
;motor 4
Pedir4: 
    mov ah,9
    lea dx,titulo4
    int 21h 
    
    mov ah,9
    lea dx,enter
    int 21h
    
    mov bl,0000h
    mov al,0000h
    mov cx,0000h
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset ingreseMotor4
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M4valor1,cl
    mov cl,0000h
    
    mov ax,0000h    
    
    mov ah,09
    mov dx,offset ingreseMotor4
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add bl,al
    add cl,al
    
    mov M4valor2,cl
    mov cl,0000h
    
    mov ax,0000h 
                
    mov ah,09
    mov dx,offset ingreseMotor4
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M4valor3,cl
    mov cx,0000h 
    
    mov ah,09
    mov dx,offset ingreseMotor4
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M4valor4,cl
    mov cx,0000h 
    
    mov ah,09
    mov dx,offset ingreseMotor4
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add bl,al
    add cl,al
    
    mov M4valor5,cl
    mov ax,0000h 
    
    
    
    ;loop Pedir ;repite ciclo(iteracion)
      
    mov motor4,bx  
    
   
        
promedio4:
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,9
    lea dx,enter
    int 21h 
    
    mov ah,09
    mov dx,offset mPromedio4
    int 21H 
        
    mov ax,0000h
    mov ax,motor4
    mov bl,5 
    DIV bl ;divimos AX entre bl
    
    mov bl,al
    mov cl,ah       
    
    mov prom4,bl
    mov promdecimal4,cl
    
    mov ax,0000h
    mov al,bl
    
    call print_num 
    
    mov ax,0000h
    mov ah,09
    lea dx,punto
    int 21h
    
    mov ax,0000h 
    
    mov al,cl
    mov dl,2    
    mul dl

    
    call print_num
    
    
    mov ah,9
    lea dx,enter
    int 21h 
    
    mov cx,0000h ;numero de calificaciones a pedir
    mov bx,0000h
    mov ax,0000h
    mov dx,0000h
     
    
    jmp varianza4
    
    
;motor 5
Pedir5:  

    mov ah,9
    lea dx,titulo5
    int 21h 
    
    mov ah,9
    lea dx,enter
    int 21h
    
    mov bl,0000h
    mov al,0000h
    mov cx,0000h
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,09
    mov dx,offset ingreseMotor5
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M5valor1,cl
    mov cl,0000h
    
    mov ax,0000h    
    
    mov ah,09
    mov dx,offset ingreseMotor5
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add bl,al
    add cl,al
    
    mov M5valor2,cl
    mov cl,0000h
    
    mov ax,0000h 
                
    mov ah,09
    mov dx,offset ingreseMotor5
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M5valor3,cl
    mov cx,0000h 
    
    mov ah,09
    mov dx,offset ingreseMotor5
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add cl,al
    add bl,al
    
    mov M5valor4,cl
    mov cx,0000h 
    
    mov ah,09
    mov dx,offset ingreseMotor5
    int 21H 
    
      
    mov ah,01h  
    int 21h 
 
   
    sub al,48 
    mov dl,10
    mul dl
    
    add cl,al
    add bl,al ;Hacemos la suma de los valores de los motores
    
    mov ah,01h  
    int 21h 
 
   
    sub al,48
    add bl,al
    add cl,al
    
    mov M5valor5,cl
    mov ax,0000h 
    
    
    
    ;loop Pedir ;repite ciclo(iteracion)
      
    mov motor5,bx
        
promedio5:
    mov ax,@data
    mov ds,ax
    
    ;Interrupcion para mostrar el mensaje
    mov ah,9
    lea dx,enter
    int 21h 
    
    mov ah,09
    mov dx,offset mPromedio5
    int 21H 
        
    mov ax,0000h
    mov ax,motor4
    mov bl,5 
    DIV bl ;divimos AX entre bl
    
    mov bl,al
    mov cl,ah       
    
    mov prom5,bl
    mov promdecimal5,cl
    
    mov ax,0000h
    mov al,bl
    
    call print_num 
    
    mov ax,0000h
    mov ah,09
    lea dx,punto
    int 21h
    
    mov ax,0000h 
    
    mov al,cl
    mov dl,2    
    mul dl

    
    call print_num
    
    
    mov ah,9
    lea dx,enter
    int 21h 
    
    mov cx,0000h ;numero de calificaciones a pedir
    mov bx,0000h
    mov ax,0000h
    mov dx,0000h
    
    jmp varianza5
 
varianza1:  
    
    mov al,M1valor1
    mov dl,M1valor1
    mul dl
    
    mov dl,5
    
    add bx,ax
    
    mov al,M1valor2
    mov dl,M1valor2
    mul dl
    
    mov dl,5
    
    add bx,ax 
    
    mov al,M1valor3
    mov dl,M1valor3
    mul dl
    
    mov dl,5
    
    add bx,ax
    
    mov al,M1valor4
    mov dl,M1valor4
    mul dl
    
    mov dl,5
    
    add bx,ax 
    
    mov al,M1valor5
    mov dl,M1valor5
    mul dl
    
    add bx,ax
    mov cx,bx
    
    mov bx,5  ; en el registro bx se almacena el n�mero 2
    mov ax,cx  ; en el registro ax se almacena el n�mero 8
    mov dx, 0 ; el registro dx, que se toma de forma impl�cita
    ; como la parte alta del dividendo, almacena un cero
    div bx ; se realiza la divisi�n (dx:ax / bx)
    ; en ax se almacenara el resultado de la divisi�n
    ; y en dx se almacenara el residuo 
    
    mov bx,ax
     
    mov ax,0000h
     
    mov al,prom1
    mov dl,prom1
    mul dl
    
    mov dx,bx
    sub dx,ax  
      
    mov bx,0000h
    mov bx,dx
    
    mov motor1,bx
                   
    mov ah,9
    lea dx,mvarianza1
    int 21h
       
    mov ax,bx
    
    call print_num
    
    mov ah,9
    lea dx,enter
    int 21h 
    
    mov ah,9
    lea dx,enter
    int 21h 
    
    jmp Pedir2
    
;varianza 2   


varianza2:  
    
    mov al,M2valor1
    mov dl,M2valor1
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax
    
    mov al,M2valor2
    mov dl,M2valor2
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax 
    
    mov al,M2valor3
    mov dl,M2valor3
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax
    
    mov al,M2valor4
    mov dl,M2valor4
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax 
    
    mov al,M2valor5
    mov dl,M2valor5
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax
    mov cx,bx
    
    mov bx,5  ; en el registro bx se almacena el n�mero 2
    mov ax,cx  ; en el registro ax se almacena el n�mero 8
    mov dx, 0 ; el registro dx, que se toma de forma impl�cita
    ; como la parte alta del dividendo, almacena un cero
    div bx ; se realiza la divisi�n (dx:ax / bx)
    ; en ax se almacenara el resultado de la divisi�n
    ; y en dx se almacenara el residuo 
    
    ;mov ax,bx
    ;mov bx,0005
    ;div bx
    
    
    mov bx,ax
     
    mov ax,0000h
     
    mov al,prom2
    mov dl,prom2
    mul dl
    
    mov dx,bx
    sub dx,ax  
    
    
    mov bx,0000h
    mov bx,dx
                
    
    mov ah,9
    lea dx,mvarianza2
    int 21h
    
    
    mov ax,bx
   
    
    call print_num
    
    mov ah,9
    lea dx,enter
    int 21h
     
    mov ah,9
    lea dx,enter
    int 21h  


    jmp Pedir3
     
;varianza 3
          
varianza3:  
    
    mov al,M3valor1
    mov dl,M3valor1
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax
    
    mov al,M3valor2
    mov dl,M3valor2
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax 
    
    mov al,M3valor3
    mov dl,M3valor3
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax
    
    mov al,M3valor4
    mov dl,M3valor4
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax 
    
    mov al,M3valor5
    mov dl,M3valor5
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax
    mov cx,bx
    
    mov bx,5  ; en el registro bx se almacena el n�mero 2
    mov ax,cx  ; en el registro ax se almacena el n�mero 8
    mov dx, 0 ; el registro dx, que se toma de forma impl�cita
    ; como la parte alta del dividendo, almacena un cero
    div bx ; se realiza la divisi�n (dx:ax / bx)
    ; en ax se almacenara el resultado de la divisi�n
    ; y en dx se almacenara el residuo 
    
    ;mov ax,bx
    ;mov bx,0005
    ;div bx
    
    
    mov bx,ax
    mov cx,dx
     
    mov ax,0000h
     
    mov al,prom3
    mov dl,prom3
    mul dl
    
    mov dx,bx
    sub dx,ax  
    
    
    mov bx,0000h
    mov bx,dx
                
    
    mov ah,9
    lea dx,mvarianza3
    int 21h
    
    
    mov ax,bx
   
    
    call print_num
    
    mov ah,9
    lea dx,enter
    int 21h
     
    mov ah,9
    lea dx,enter
    int 21h   
    
    jmp Pedir4
    
; Varianza 4
    

varianza4:  
    
    mov al,M4valor1
    mov dl,M4valor1
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax
    
    mov al,M4valor2
    mov dl,M4valor2
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax 
    
    mov al,M4valor3
    mov dl,M4valor3
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax
    
    mov al,M4valor4
    mov dl,M4valor4
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax 
    
    mov al,M4valor5
    mov dl,M4valor5
    mul dl
    
    mov dl,5
    ;idiv dl
    
    add bx,ax
    mov cx,bx
    
    mov bx,5  ; en el registro bx se almacena el n�mero 2
    mov ax,cx  ; en el registro ax se almacena el n�mero 8
    mov dx, 0 ; el registro dx, que se toma de forma impl�cita
    ; como la parte alta del dividendo, almacena un cero
    div bx ; se realiza la divisi�n (dx:ax / bx)
    ; en ax se almacenara el resultado de la divisi�n
    ; y en dx se almacenara el residuo 
    
    ;mov ax,bx
    ;mov bx,0005
    ;div bx
    
    
    mov bx,ax
    mov cx,dx
     
    mov ax,0000h
     
    mov al,prom4
    mov dl,prom4
    mul dl
    
    mov dx,bx
    sub dx,ax  
    
    
    mov bx,0000h
    mov bx,dx
                
    
    mov ah,9
    lea dx,mvarianza4
    int 21h
    
    
    mov ax,bx
   
    
    call print_num 
    
    mov ah,9
    lea dx,enter
    int 21h
     
    mov ah,9
    lea dx,enter
    int 21h 
               
    jmp Pedir5       

;Varianza 5  
varianza5:  
    
    mov al,M5valor1
    mov dl,M5valor1
    mul dl
    
    ;mov dl,5
    ;idiv dl
    
    add bx,ax
    
    mov al,M5valor2
    mov dl,M5valor2
    mul dl
    
    ;mov dl,5
    ;idiv dl
    
    add bx,ax 
    
    mov al,M5valor3
    mov dl,M5valor3
    mul dl
    
    ;mov dl,5
    ;idiv dl
    
    add bx,ax
    
    mov al,M5valor4
    mov dl,M5valor4
    mul dl
    
    ;mov dl,5
    ;idiv dl
    
    add bx,ax 
    
    mov al,M5valor5
    mov dl,M5valor5
    mul dl
    
    ;mov dl,5
    ;idiv dl
    
    add bx,ax
    mov cx,bx
    
    mov bx,5  ; en el registro bx se almacena el n�mero 2
    mov ax,cx  ; en el registro ax se almacena el n�mero 8
    mov dx, 0 ; el registro dx, que se toma de forma impl�cita
    ; como la parte alta del dividendo, almacena un cero
    div bx ; se realiza la divisi�n (dx:ax / bx)
    ; en ax se almacenara el resultado de la divisi�n
    ; y en dx se almacenara el residuo 
    
    ;mov ax,bx
    ;mov bx,0005
    ;div bx
    
    
    mov bx,ax
    mov cx,dx
     
    mov ax,0000h
     
    mov al,prom5
    mov dl,prom5
    mul dl
    
    mov dx,bx
    sub dx,ax  
    
    
    mov bx,0000h
    mov bx,dx
                
    
    mov ah,9
    lea dx,mvarianza5
    int 21h
    
    
    mov ax,bx
   
    
    call print_num 
    mov ah,9
    lea dx,enter
    int 21h  
    
    mov ah,9
    lea dx,enter
    int 21h 
    
    
  
       
    
    
salir:
    mov ah,9
    lea dx,enter 
    int 21h
    
    
    mov ah,04ch
    int 21h        
    
    define_scan_num
    define_print_num
    define_print_num_uns 
   
 
end inicio   
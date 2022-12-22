.model small               
.code
org 100h
start:
    jmp mulai
username    db 13,10,'MASUKKAN USERNAME ANDA : $'
password    db 13,10,'MASUKKAN PASSWORD ANDA : $'
pin         db 13,10,' '
            db 13,10,'MASUKKAN PIN ATM ANDA : $'
tampung_username    db 30,?,30 dup(?)
tampung_password    db 13,?,13 dup(?)
tampung_pin         db 13,?,13 dup(?)

nominal db 13,10,''
        db 13,10,'+-------------------------------------+'
        db 13,10,'|            PILIH NOMINAL            |'
        db 13,10,'+-------------------------------------+'
        db 13,10,'|           SELECT  NOMINAL           |'
        db 13,10,'+----+------------+----+--------------+'
        db 13,10,'| 01.| Rp 100.000 | 06.| Rp 600.000   |'
        db 13,10,'| 02.| Rp 200.000 | 07.| Rp 700.000   |'
        db 13,10,'| 03.| Rp 300.000 | 08.| Rp 800.000   |'
        db 13,10,'| 04.| Rp 400.000 | 09.| Rp 900.000   |'
        db 13,10,'| 05.| Rp 500.000 | 10.| Rp 1.000.000 |'
        db 13,10,'+----+------------+----+--------------+','$'
        
error   db 13,10,' '
        db 13,10,'+-------------------------------------------+'
        db 13,10,'| PILIHAN YANG ANDA MASUKKAN TIDAK TERSEDIA |'
        db 13,10,'+-------------------------------------------+','$'
        
pilih_mtr   db 13,10,' '
            db 13,10,'SILAHKAN PILIH NOMINAL PENARIKAN : $'

    mulai:
    mov ah,09h
    lea dx,username
    int 21h
    mov ah,0ah
    lea dx,tampung_username
    int 21h
    push dx
    
    mov ah,09h
    lea dx,password
    int 21h
    mov ah,0ah
    lea dx,tampung_password
    int 21h
    push dx
    
    mov ah,09h
    mov dx,offset nominal
    int 21h
    jmp proses
    jne error_msg
    
error_msg:
    mov ah,09h
    mov dx,offset error
    int 21h
    int 20h
    
proses:
    mov ah,09h
    mov dx,offset pilih_mtr
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    mov ah,1
    int 21h
    mov bl,al
    cmp bh,'0'
    cmp bl,'1'
    je hasil1
    
    cmp bh,'0'
    cmp bl,'2'
    je hasil2
    
    cmp bh,'0'
    cmp bl,'3'
    je hasil3
    
    cmp bh,'0'
    cmp bl,'4'
    je hasil4
    
    cmp bh,'0'
    cmp bl,'5'
    je hasil5
    
    cmp bh,'0'
    cmp bl,'6'
    je hasil6
    
    cmp bh,'0'
    cmp bl,'7'
    je hasil7
    
    cmp bh,'0'
    cmp bl,'8'
    je hasil8
    
    cmp bh,'0'
    cmp bl,'9'
    je hasil9
    
    cmp bh,'1'
    cmp bl,'0'
    je hasil10
    
    jne error_msg

;-----------------------------------------------
    
hasil1:
    mov ah,09h
    lea dx,pin
    int 21h
    mov ah,0ah
    lea dx,tampung_pin
    int 21h
    push dx
    mov ah,09h
    lea dx,teks1
    int 21h
    int 20h
        
hasil2:
    mov ah,09h
    lea dx,pin
    int 21h
    mov ah,0ah
    lea dx,tampung_pin
    int 21h
    push dx
    mov ah,09h
    lea dx,teks2
    int 21h
    int 20h
        
hasil3:
    mov ah,09h
    lea dx,pin
    int 21h
    mov ah,0ah
    lea dx,tampung_pin
    int 21h
    push dx
    mov ah,09h
    lea dx,teks3
    int 21h
    int 20h
        
hasil4:
    mov ah,09h
    lea dx,pin
    int 21h
    mov ah,0ah
    lea dx,tampung_pin
    int 21h
    push dx
    mov ah,09h
    lea dx,teks4
    int 21h
    int 20h
        
hasil5:
    mov ah,09h
    lea dx,pin
    int 21h
    mov ah,0ah
    lea dx,tampung_pin
    int 21h
    push dx
    mov ah,09h
    lea dx,teks5
    int 21h
    int 20h
        
hasil6:
    mov ah,09h
    lea dx,pin
    int 21h
    mov ah,0ah
    lea dx,tampung_pin
    int 21h
    push dx
    mov ah,09h
    lea dx,teks6
    int 21h
    int 20h
        
hasil7: 
    mov ah,09h
    lea dx,pin
    int 21h
    mov ah,0ah
    lea dx,tampung_pin
    int 21h
    push dx
    mov ah,09h
    lea dx,teks7
    int 21h
    int 20h
        
hasil8: 
    mov ah,09h
    lea dx,pin
    int 21h
    mov ah,0ah
    lea dx,tampung_pin
    int 21h
    push dx
    mov ah,09h
    lea dx,teks8
    int 21h
    int 20h
        
hasil9:  
    mov ah,09h
    lea dx,pin
    int 21h
    mov ah,0ah
    lea dx,tampung_pin
    int 21h
    push dx
    mov ah,09h
    lea dx,teks9
    int 21h
    int 20h
        
hasil10: 
    mov ah,09h
    lea dx,pin
    int 21h
    mov ah,0ah
    lea dx,tampung_pin
    int 21h
    push dx
    mov ah,09h
    lea dx,teks10
    int 21h
    int 20h
    
;-----------------------------------------------   
        
teks1   db 13,10,'+-------------------------------------------------------+'
        db 13,10,'|    ANDA MELAKUKAN PENARIKAN UANG SEBESAR Rp100.000    |'
        db 13,10,'|SILAHKAN KE ATM TERDEKAT DAN MASUKKAN KODE DI BAWAH INI|'
        db 13,10,'|                        346741                         |'
        db 13,10,'+-------------------------------------------------------+','$'
        
teks2   db 13,10,'+-------------------------------------------------------+'
        db 13,10,'|    ANDA MELAKUKAN PENARIKAN UANG SEBESAR Rp200.000    |'
        db 13,10,'|SILAHKAN KE ATM TERDEKAT DAN MASUKKAN KODE DI BAWAH INI|'
        db 13,10,'|                        673623                         |'
        db 13,10,'+-------------------------------------------------------+','$'
                
teks3   db 13,10,'+-------------------------------------------------------+'
        db 13,10,'|    ANDA MELAKUKAN PENARIKAN UANG SEBESAR Rp300.000    |'
        db 13,10,'|SILAHKAN KE ATM TERDEKAT DAN MASUKKAN KODE DI BAWAH INI|'
        db 13,10,'|                        854321                         |'
        db 13,10,'+-------------------------------------------------------+','$'
                
teks4   db 13,10,'+-------------------------------------------------------+'
        db 13,10,'|    ANDA MELAKUKAN PENARIKAN UANG SEBESAR Rp400.000    |'
        db 13,10,'|SILAHKAN KE ATM TERDEKAT DAN MASUKKAN KODE DI BAWAH INI|'
        db 13,10,'|                        827348                         |'
        db 13,10,'+-------------------------------------------------------+','$'
                
teks5   db 13,10,'+-------------------------------------------------------+'
        db 13,10,'|    ANDA MELAKUKAN PENARIKAN UANG SEBESAR Rp500.000    |'
        db 13,10,'|SILAHKAN KE ATM TERDEKAT DAN MASUKKAN KODE DI BAWAH INI|'
        db 13,10,'|                        728127                         |'
        db 13,10,'+-------------------------------------------------------+','$'
                
teks6   db 13,10,'+-------------------------------------------------------+'
        db 13,10,'|    ANDA MELAKUKAN PENARIKAN UANG SEBESAR Rp600.000    |'
        db 13,10,'|SILAHKAN KE ATM TERDEKAT DAN MASUKKAN KODE DI BAWAH INI|'
        db 13,10,'|                        823974                         |'
        db 13,10,'+-------------------------------------------------------+','$'
                
teks7   db 13,10,'+-------------------------------------------------------+'
        db 13,10,'|    ANDA MELAKUKAN PENARIKAN UANG SEBESAR Rp700.000    |'
        db 13,10,'|SILAHKAN KE ATM TERDEKAT DAN MASUKKAN KODE DI BAWAH INI|'
        db 13,10,'|                        921988                         |'
        db 13,10,'+-------------------------------------------------------+','$'
                
teks8   db 13,10,'+-------------------------------------------------------+'
        db 13,10,'|    ANDA MELAKUKAN PENARIKAN UANG SEBESAR Rp800.000    |'
        db 13,10,'|SILAHKAN KE ATM TERDEKAT DAN MASUKKAN KODE DI BAWAH INI|'
        db 13,10,'|                        312434                         |'
        db 13,10,'+-------------------------------------------------------+','$'
                
teks9   db 13,10,'+-------------------------------------------------------+'
        db 13,10,'|    ANDA MELAKUKAN PENARIKAN UANG SEBESAR Rp900.000    |'
        db 13,10,'|SILAHKAN KE ATM TERDEKAT DAN MASUKKAN KODE DI BAWAH INI|'
        db 13,10,'|                        534323                         |'
        db 13,10,'+-------------------------------------------------------+','$'
                
teks10  db 13,10,'+-------------------------------------------------------+'
        db 13,10,'|   ANDA MELAKUKAN PENARIKAN UANG SEBESAR Rp1.000.000   |'
        db 13,10,'|SILAHKAN KE ATM TERDEKAT DAN MASUKKAN KODE DI BAWAH INI|'
        db 13,10,'|                        234573                         |'
        db 13,10,'+-------------------------------------------------------+','$'
        
end start
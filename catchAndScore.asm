[org 0x100]

;__________________________________________________________
		jmp start
;__________________________________________________________



;##############################################################################################################
;				GENERAL FUNCTIONS HERE
;##############################################################################################################
;---------------------------------------------------------

INFINITE:
	pusha
	
	mov cx,40000

l1:
	sub cx,1
	cmp cx,0
	jne l1

	popa
	
	ret
;---------------------------------------------------------
;---------------------------------------------------------
INFINITE2:
	pusha
	
	mov cx,900000

l2:
	sub cx,1
	cmp cx,0
	jne l2

	popa
	
	ret
;---------------------------------------------------------

clearScreen:

	push es 
 	push ax 
 	push di

	mov ax, 0xb800 
 	mov es, ax ; 
 	mov di, 0 

nextloc: 
	mov word [es:di], 0x0720 
 	add di, 2 
 	cmp di, 4000  
	jne nextloc  
 

	pop di
	pop ax
	pop es

	ret 
;--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------CLEARSCREEN!
;_______
printstr: 
;_______

	push bp 
 	mov bp, sp 
	push es 
 	push ax 
 	push cx 
 	push si 
 	push di 

 	mov ax, 0xb800 
 	mov es, ax 
 	mov di, [bp+8] 
 	mov si, [bp+6]  
 	mov cx, [bp+4] 
 	mov ah, 0x07 

nextchar:
 	mov al, [si] 
	call INFINITE2
	call INFINITE2
	call INFINITE2
 	mov [es:di], ax  
 	add di, 2  
 	add si, 1 
	loop nextchar  

 	pop di 
 	pop si 
 	pop cx 
 	pop ax 
 	pop es 
 	pop bp 	
	ret 4 
;---------------------------------------------------------------------------------------------

;##############################################################################################################
;				GENERAL FUNCTIONS END HERE!!!
;##############################################################################################################



;____________________________________________________________________________________________________________________




;##############################################################################################################
;				THE FIRST SCREEN  CODE STARTS HERE
;##############################################################################################################

;_________
fireBall:
;_________

	push es 
 	push ax 
 	push di



	

;----------------------------------------------------------------------------------blue 0001
	mov ax, 0xb800 
 	mov es, ax ; 
 	mov di, 0 

mov ax,0
mov ah,00000001b			;dark BLUE(0001) STAR ON black(0000) background 
mov al,"*"

nextloc1: 
	mov word [es:di], ax
	call INFINITE
 	add di, 320 
 	cmp di, 3840  
	jne nextloc1  

nextloc2: 
	mov word [es:di], ax
	call INFINITE
 	add di, 4 
 	cmp di, 3996  
	jne nextloc2  

	mov word [es:di], ax		;at 3996
	mov di,3838		;
 	
nextloc3: 
	mov word [es:di], ax
	call INFINITE
 	sub di, 320 
 	cmp di, 318  
	jne nextloc3  

	
	mov di,158
nextloc4: 
	mov word [es:di], ax
	call INFINITE
 	sub di, 4 
 	cmp di, 2  
	jne nextloc4  



;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------fireBall!



;--------------------------------------------------------------------------------------------------------------------------------------------------------POPPING 

	pop di
	pop ax
	pop es

	ret 

;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ENDOfFIREbALL!

;______
obj1:
;______
	pusha

	mov ax, 0xb800 
 	mov es, ax ; 

mov ax,0
mov ah,00010000b			;dark BLUE(0001) background
mov al,0h				;place "zero hex" in al when u dont want to print any character

	mov di, 1316
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax

	mov di, 1632
l3: 
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 1642  
	jne l3  

	mov di, 1474
l4: 
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 1480
	jne l4  
	

	popa

	ret

;---------------------------------------------------------------------------------------------

;---------------------------------------------------------------------------------------------

;____
obj2:
;____
	pusha

	mov ax, 0xb800 
 	mov es, ax ; 

mov ax,0
mov ah,01010000b			;(0011)sky blue background
mov al,0h				;place "zero hex" in al when u dont want to print any character


	mov di, 1722
l5: 
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 1732 
	jne l5  

	mov di, 1562
l6: 
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 1572 
	jne l6  

	mov di, 1402
l7: 
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 1412 
	jne l7 


	

	popa

	ret

;---------------------------------------------------------------------------------------------

;---------------------------------------------------------------------------------------------

;____
obj3:
;____

	pusha

	mov ax, 0xb800 
 	mov es, ax ; 

mov ax,0
mov ah,01100000b			;kindaa pink/magenta(0110) background
mov al,0h				;place "zero hex" in al when u dont want to print any character


	mov di, 2478
l8: 
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 2488 
	jne l8

	mov di, 2320
l9: 
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 2326 
	jne l9

	mov di, 2640
l10: 
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 2646 
	jne l10 



	

	popa

	ret

;---------------------------------------------------------------------------------------------

;---------------------------------------------------------------------------------------------

;_____
bomb:
;_____

	pusha

	mov ax, 0xb800 
 	mov es, ax ; 

mov ax,0
mov ah,01000000b			;RED(0100) bomb bro		
mov al,0h				;place "zero hex" in al when u dont want to print any character


	mov di, 1678
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax

	mov di, 1686
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax

	mov di, 1358
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax

	mov di, 1366
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax


	mov di, 1520
l11: 
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 1526 
	jne l11 



	popa

	ret

;---------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------

;_________
clearBomb:
;_________

	pusha

	mov ax, 0xb800 
 	mov es, ax ; 

mov ax,0
mov ah,00000000b			;black(0000) background just to print black background
mov al,0h				;place "zero hex" in al when u dont want to print any character


	mov di, 1678
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax

	mov di, 1686
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax

	mov di, 1358
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax

	mov di, 1366
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax


	mov di, 1520
l12: 
	call INFINITE2
	call INFINITE2
	call INFINITE2
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 1526 
	jne l12 



	popa

	ret

;---------------------------------------------------------------------------------------------

;________
printEnter:
;________

	pusha

	mov ax, 0xb800 
 	mov es, ax ; 

mov ax,0
mov ah,10000100b		;blinking		("1"0000100) the left most bit when "1" makes the chars blinky 

mov al,"E"
	mov di, 3432
	mov word [es:di], ax
mov al,"N"
	mov di, 3434
	mov word [es:di], ax
mov al,"T"
	mov di, 3436
	mov word [es:di], ax
mov al,"E"
	mov di, 3438
	mov word [es:di], ax
mov al,"R"
	mov di, 3440
	mov word [es:di], ax


	popa
	ret
;##############################################################################################################
;				END OF THE FIRST SCREEN  CODE!!!
;##############################################################################################################


;____________________________________________________________________________________________________________________



;##############################################################################################################
;				THE SECOND SCREEN  CODE STARTS HERE
;##############################################################################################################

;____________________________________________________________________________________________________________________


;__________
color:
;__________
	push es 
 	push ax 
 	push di

	

;----------------------------------------------------------------------------------blue 0011
	mov ax, 0xb800 
 	mov es, ax ; 
 	mov di, 0 

mov ax,0
mov ah,00110000b			;sky blue(0011) background  this is just a clearscreen but with blue background
mov al,0h				;place "zero hex" in al when u dont want to print any character

nextloc01: 
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 4000  
	jne nextloc01  
;------------------------------------------------------------------------------------------------------------------------------------------------------------------------------BLUEBACKGROUND!

;----------------------------------------------------------------------------------brown 0110
	mov ax, 0xb800 
 	mov es, ax ; 
 	mov di, 3360 

mov ax,0
mov ah,01100000b			;(0110) brown the "mud" at the very bottom
mov al,0h				;place "zero hex" in al when u dont want to print any character

nextloc02: 
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 4000  
	jne nextloc02 


;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------BROWNSTRIP!

;----------------------------------------------------------------------------------green 0010
	mov ax, 0xb800 
 	mov es, ax ; 
 	mov di, 3200 

mov ax,0
mov ah,00100000b			;(0100) green "GRASS" brooo	
mov al,0h				;place "zero hex" in al when u dont want to print any character

nextloc03: 
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 3360 
	jne nextloc03 

;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------GREENSTRIP!

;----------------------------------------------------------------------------------white 1111
	mov ax, 0xb800 
 	mov es, ax ;  

mov ax,0
mov ah,11110000b			;(1111) white ("0111" is also white) THE CLOUDY clouds		
mov al,0h				;place "zero hex" in al when u dont want to print any character

;-----------------------------------------------1 col		five rows (0-4) each col
	mov di, 0
nextloc04: 
	mov word [es:di], ax
 	add di, 160 
 	cmp di, 800 
	jne nextloc04 
;-----------------------------------------------2 col
 	mov di, 2 
nextloc5: 
	mov word [es:di], ax
 	add di, 160 
 	cmp di, 802 
	jne nextloc5 
;-----------------------------------------------3 col
 	mov di, 4
nextloc6: 
	mov word [es:di], ax
 	add di, 160 
 	cmp di, 804 
	jne nextloc6

;-----------------------------------------------4 col
 	mov di, 6
nextloc7: 
	mov word [es:di], ax
 	add di, 160 
 	cmp di, 806 
	jne nextloc7 
;----------------------------------------------------------------vetically done!   now horizontal rows

;-----------------------------------------------1 row
 	mov di, 640
nextloc8: 
	mov word [es:di], ax
 	add di, 2 
 	cmp di,674					 
	jne nextloc8
;-----------------------------------------------2 row
 	mov di, 806
nextloc9: 
	mov word [es:di], ax
 	add di, 2 
 	cmp di,836						
	jne nextloc9
;----------------------------------------------------------------3 row (small)
 	mov di, 972
nextloc10: 
	mov word [es:di], ax
 	add di, 2 
 	cmp di,978 
	jne nextloc10
;-------------------------------------------------------------------------------------4 col (small)
 	mov di, 1132
nextloc11: 
	mov word [es:di], ax
 	

;---------------------------------------------------------------------placing some blue spots again
 	mov di, 660 

mov ax,0
mov ah,00110000b		;blue 0011
mov al,0h

 
	mov word [es:di], ax
 	mov di, 662
	mov word [es:di], ax 
 	mov di, 664
	mov word [es:di], ax 

 	mov di, 860
	mov word [es:di], ax 
 	mov di, 862
	mov word [es:di], ax 
 	mov di, 864
	mov word [es:di], ax 

;-----------------------------------------------------------------------------------------blue spots ended

;--------------------------------------------white again
	mov ax, 0xb800 
 	mov es, ax ;  

mov ax,0
mov ah,11110000b		;white 1111
mov al,0h

;-----------------------------------------------1 row		top right
	mov di, 134				
nextloc12: 
	mov word [es:di], ax
 	add di, 2 
 	cmp di,148 
	jne nextloc12 

;-------------------------------------------------------following are the white spots on the top right quadrant
	mov di, 304
	mov word [es:di], ax
 	mov di, 464
	mov word [es:di], ax

	mov di, 306
	mov word [es:di], ax
 	mov di, 466
	mov word [es:di], ax
 
	;mov di, 592
	;mov word [es:di], ax
 	;mov di, 594
	;mov word [es:di], ax
 	;mov di, 596
	;mov word [es:di], ax	
 	
	;mov di, 752
	;mov word [es:di], ax
 	;mov di, 754
	;mov word [es:di], ax
 	;mov di, 756
	;mov word [es:di], ax

	;mov di, 1240
	;mov word [es:di], ax
 	;mov di, 1242
	;mov word [es:di], ax
 	;mov di, 1244
	;mov word [es:di], ax
	;mov word [es:di], ax
 	;mov di, 1246
	mov word [es:di], ax
 	mov di, 1248
	mov word [es:di], ax

;---------------------------------------------------white spots ended


;-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------WHITESTRIPS!

;---------------------------------------------------------------lines on brown strip part 1
	mov ax, 0xb800 
 	mov es, ax ; 
 	mov di, 3360 

mov ax,0
mov ah,11110000b		;white 1111

mov al,0h

nextloc13: 
	mov word [es:di], ax
 	add di, 4 
 	cmp di, 4000  
	jne nextloc13

;-----------------------------------------------------------------------
;----------------------------------------------------------------------------------whole brown strip again
	mov ax, 0xb800 
 	mov es, ax ; 
 	mov di, 3360 

mov ax,0
mov ah,01100000b

mov al,0h

nextloc14: 
	mov word [es:di], ax
 	add di, 2 
 	cmp di, 4000  
	jne nextloc14 


;---------------------------------------------------------------lines on brown strip part 2

	mov ax, 0xb800 
 	mov es, ax ; 
 	mov di, 3362 

mov ax,0
mov ah,11110000b		;white 1111

mov al,0h

nextloc15: 
	mov word [es:di], ax
 	add di, 4 
 	cmp di, 3998  
	jne nextloc15

	mov di,3998
	mov word [es:di], ax

;--------------------------------------------------------------------------------------------------------------------------------------------------------------NOW WE MAKE OBJECTS---------






;------------------------------------------------------------------------------------------------------------------------------------------------------------------------OBJECTS DONE!!!---------



;-----print "score"----------

mov ax,0
mov ah,00110000b		;0011 blue bg , 0000 black writing
mov al,"S"

	mov di, 310
	mov word [es:di], ax
mov al,"C"
	mov di, 312
	mov word [es:di], ax
mov al,"O"
	mov di, 314
	mov word [es:di], ax
mov al,"R"
	mov di, 316
	mov word [es:di], ax
mov al,"E"
	mov di, 318
	mov word [es:di], ax


;---------------------------------------------------------------------------score DONE

;--------------------------------------------------------------------------------------------------show time on top left corner


;---------print "time"--------------------------

mov ax,0
mov ah,01110000b		;0111 white bg , 0000 black writing
mov al,"T"

	mov di, 160
	mov word [es:di], ax
mov al,"I"
	mov di, 162
	mov word [es:di], ax
mov al,"M"
	mov di, 164
	mov word [es:di], ax
mov al,"E"
	mov di, 166
	mov word [es:di], ax

;--------------------------------------------------------------------------------------------------TIME DONE!!



;--------------------------------------------------------------------------------------------------------------------------------------------------------POPPING 

	pop di
	pop ax
	pop es

	ret 

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ENDOFCOLOR!








;---------------------------------------------------------------------------------------------


;---------------------------------------------------------------------------------------------







;##############################################################################################################
;				END OF THE SECOND SCREEN  CODE!!!
;##############################################################################################################


;____________________________________________________________________________________________________________________



;##############################################################################################################
;				THE THIRD SCREEN  CODE STARTS HERE
;##############################################################################################################

;____________________________________________________________________________________________________________________

;-------------------------------------------------------------------------------------------------		BLUE LINE################

bottomLine:

	push es 
 	push ax 
 	push di


	mov ax, 0xb800 
 	mov es, ax  

mov ax,0
mov ah,00000000b		;						

mov al,176


	mov di,2602
complete: 
	mov word [es:di], ax
	;call INFINITE3
	add di,2 
 	cmp di, 2684  
	jne complete

mov ah,01000100b			;
	mov di,2604
complete3: 
	mov word [es:di], ax
	;call INFINITE3
	add di,8 
 	cmp di, 2684  
	jne complete3

	pop di
	pop ax
	pop es

	ret 



;--------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------		BLUE LINE################

aboveLine:

	push es 
 	push ax 
 	push di


	mov ax, 0xb800 
 	mov es, ax  

mov ax,0
mov ah,00000000b			;				

mov al,176


	mov di,1322
complete1: 
	mov word [es:di], ax
	;call INFINITE3
	add di,2 
 	cmp di, 1404  
	jne complete1

mov ah,01000100b				;
	mov di,1324
complete2: 
	mov word [es:di], ax
	;call INFINITE3
	add di,8 
 	cmp di, 1404  
	jne complete2

	pop di
	pop ax
	pop es

	ret 



;--------------------------------------------------------------------------------------------------

;##############################################################################################################
;				END OF THE THIRD SCREEN  CODE!!!
;##############################################################################################################






;===============================================================================================================
;===============================================================================================================
;					START OF THE MOVEMENT SCREEN  CODE!!!
;===============================================================================================================
;===============================================================================================================


;____________________________________________________________________________________
; subroutine to print a number at top left of screen 
; takes the number to be printed as its parameter 

printFinalScore: 

 push bp 
 mov bp, sp 
 push es 
 push ax 
 push bx 
 push cx 
 push dx 
 push di 

 mov ax, 0xb800 
 mov es, ax 	; point es to video base 

 mov ax, [bp+4] 	; load number in ax 
 mov bx, 10 	; use base 10 for division 
 mov cx, 0 	; initialize count of digits 

nextdigitfs: 

 mov dx, 0 	; zero upper half of dividend 
 div bx 		; divide by 10 

 add dl, 0x30 	; convert digit into ascii value 
 push dx 		; save ascii value on stack 
 inc cx 		; increment count of values 
 cmp ax, 0 	; is the quotient zero 
 jnz nextdigitfs 	; if no divide it again 

 mov di, 2002 	; point di to 70th column 

nextposfs:
 pop dx 		; remove a digit from the stack 
 mov dh, 0x07 	; use normal attribute 
 mov [es:di], dx 	; print char on screen 
 add di, 2 		; move to next screen location 
 loop nextposfs 	; repeat for all digits on stack 


 pop di 
 pop dx 
 pop cx 
 pop bx 
 pop ax
 pop es 
 pop bp 
 ret 2
;______________________________________________________














;____________________________________________________________________________________
; subroutine to print a number at top left of screen 
; takes the number to be printed as its parameter 

printTime: 

 push bp 
 mov bp, sp 
 push es 
 push ax 
 push bx 
 push cx 
 push dx 
 push di 

 mov ax, 0xb800 
 mov es, ax 	; point es to video base 

 mov ax, [bp+4] 	; load number in ax 
 mov bx, 10 	; use base 10 for division 
 mov cx, 0 	; initialize count of digits 

nextdigit: 

 mov dx, 0 	; zero upper half of dividend 
 div bx 		; divide by 10 

 add dl, 0x30 	; convert digit into ascii value 
 push dx 		; save ascii value on stack 
 inc cx 		; increment count of values 
 cmp ax, 0 	; is the quotient zero 
 jnz nextdigit 	; if no divide it again 

 mov di, 2 	; point di to 70th column 

nextpos:
 pop dx 		; remove a digit from the stack 
 mov dh, 0x07 	; use normal attribute 
 mov [es:di], dx 	; print char on screen 
 add di, 2 		; move to next screen location 
 loop nextpos 	; repeat for all digits on stack 


 pop di 
 pop dx 
 pop cx 
 pop bx 
 pop ax
 pop es 
 pop bp 
 ret 2
;______________________________________________________


;____________________________________________________________________________________
; subroutine to print a number at top left of screen 
; takes the number to be printed as its parameter 

printScore: 

 push bp 
 mov bp, sp 
 push es 
 push ax 
 push bx 
 push cx 
 push dx 
 push di 

 mov ax, 0xb800 
 mov es, ax 	; point es to video base 

 mov ax, [bp+4] 	; load number in ax 
 mov bx, 10 	; use base 10 for division 
 mov cx, 0 	; initialize count of digits 

nextdigitT: 

 mov dx, 0 	; zero upper half of dividend 
 div bx 		; divide by 10 

 add dl, 0x30 	; convert digit into ascii value 
 push dx 		; save ascii value on stack 
 inc cx 		; increment count of values 
 cmp ax, 0 	; is the quotient zero 
 jnz nextdigitT 	; if no divide it again 

 mov di, 152 	; point di to 70th column 

nextposT:
 pop dx 		; remove a digit from the stack 
 mov dh, 0x07 	; use normal attribute 
 mov [es:di], dx 	; print char on screen 
 add di, 2 		; move to next screen location 
 loop nextposT 	; repeat for all digits on stack 


 pop di 
 pop dx 
 pop cx 
 pop bx 
 pop ax
 pop es 
 pop bp 
 ret 2
;______________________________________________________








;_________________________________________
clearScreenm:

	push es 
 	push ax 
 	push di

	mov ax, 0xb800 
 	mov es, ax ; 
 	mov di, 0 

nextlocm: 
	mov word [es:di], 0x720
 	add di, 2 
 	cmp di, 4000  
	jne nextlocm  
 

	pop di
	pop ax
	pop es

	ret 

;---------------------------------------------------------
INFINITEm:
	pusha
	
	mov cx,40000

l1m:
	sub cx,1
	cmp cx,0
	jne l1m

	popa
	
	ret
;---------------------------------------------------------




;__________________________________________________________________bucketStart

bucketm:
	push bp
	mov bp,sp

	mov ax, 0xb800 
 	mov es, ax  


;----------------------------------------	;this loop clears the line#(17,18,19) where bucket was printed before the new move
mov cx,240		;3 rows
mov di,2720

mov al,0h
mov ah,00110000b		;sky blue 	(basically retaining the sky blue background)

myloop:
	mov word[es:di],ax		;retain background	
	add di,2
	loop myloop
 	
;----------------------------------------

mov ax,0
mov ah,01110000b
mov al,0h

	mov cx,3
	mov di,word[cs:position]	;"[cs:position]" instead of just "[position]" BECAUSE since we are coming here from the kbisr...
				; and we need to go back to the "CODE SEGMENT" so we access it with the help of "CS"
				; the following loops (loc16,loc17,loc18) are just printing the bucket
nextloc16: 
	mov word [es:di], ax
 	add di, 160 
	loop nextloc16

	mov si,di
	sub si,160
	add si,2
	mov cx,6
nextloc17: 
	mov word [es:si], ax
 	add si, 2 
	loop nextloc17

	mov cx,3

nextloc18: 
	mov word [es:si], ax
 	sub si, 160
	loop nextloc18





;----------------------------------------BUCKET DONE!
	pop bp
	ret 
;__________________________________________________________________________bucketEnd



;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;			NOW THIS IS WHERE THE MAGIC HAPPENS 
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;======================================================================
kbisr: 

 push ax 
 push es 
 mov ax, 0xb800 
 mov es, ax 	; point es to video memory 

 in al, 0x60 	; read a char from keyboard port 	("HARDWARE INTERRUPT")	the "IRQ1" (interrupt request)

 cmp al, 0x4D 	; has the right arrow pressed 		(0x4D) is the ascii code of "right arrow" key
 jne nextmatch	; no 

 cmp word[cs:position],2864	;if right extreme reached then "DONT" move the bucket even if the user asks us to
 je exit			;right extreme not reached???

 call bucketm 		; yes
 add word[cs:position],2	;adding "2" to the the "current" position bcx we need to print bucket  "one col" right to its "current" position
 jmp exit 			; leave interrupt routine 

nextmatch:
	
 cmp al,0x4B		; has the left arrow pressed 		(0x4B) is the ascii code of "left arrow" key
 jne nomatch		;no

 cmp word[cs:position],2720	;if left extreme reached then "DONT" move the bucket even if the user asks us to
 je exit			;left extreme not reached???

call bucketm
sub word[cs:position],2	;subtracting "2" from the "current" position bcx we need to print bucket "one col" left to its "current" position
jmp exit

nomatch:

 pop es 
 pop ax 
 jmp far [cs:oldisr] 		; call the original ISR	("this is unhooking")
 
exit:

 mov al, 0x20 		; end of hardware interrupt
 out 0x20, al 		; send EOI to PIC 
 pop es 
 pop ax 
 iret 			; return from interrupt 

;===============================================================================


;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;			NOW THIS IS WHERE THE ULTRA MAGIC HAPPENS 
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;_____________________________________________________________________________________________

; timer interrupt service routine 

timer: 

 push ax 

 int 9			;just calling the "bucket interrupt"
 inc word [cs:tickcount]	; increment tick count 
 cmp word[cs:tickcount],20	;if 20 ticks done
 jne  nahiHua		; if "20" ticks not reached then do nothing and get out of subroutine
 inc word[cs:myTime]	;only then increment "mytime" bcx "20" tickcounts are equal to 1 second .......in reality ("18.2" tickcounts)
;*****************************
 cmp word[cs:myTime],120	;if 120 seconds done	(if "mytime" equals to "120" that means "2 mins" are up)...END the game then
 je  bsYar			;(go to "end" the game)
;****************************
;****************************
 cmp word[cs:gameOver],1	;if (bomb-bucket) collision happens then "gameOver" goes "1"
 je bsYar
;***************************
 push word [cs:myTime]	;if "mytime is LESS than 120" then print the time na
 call printTime 
 mov word[cs:tickcount],0	;now time is printed, make the "tickcount" go zero again, so that it again rushes to reach "20" tickcnts to make a "sec"



nahiHua:

 int 9			;just calling the "bucket interrupt"

 mov al, 0x20 		;end of 	"TIMER" interrupt
 out 0x20, al 		; end of interrupt 


 pop ax 
 iret 			; return from interrupt 

bsYar:
	
 	pop ax 

 	jmp khatam	; "khatam" takes you to get out of the code ......towards end
 	;call khatam	; "khatam" takes you to get out of the code ......towards end

;_________________________________________________________________


;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++






;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++






;####################################################################################################################
;####################################################################################################################


;+++++++++++++++++++++++++++
;obj2 brings obj3 with it!!!
;++++++++++++++++++++++++
;-------------
obj2m:		;10 points (pink)
;------------

	push dx
 	push ax
	push es

	mov ax, 0xb800 
 	mov es, ax  

;mov word[cs:points],5

	mov dx,15		  ;15 times: 15 rows actually

;______________________________________________________________________________________________
keepDoing:

mov ax,0
mov ah,01010000b	;pink			;00110000b sky blue
mov al,0h

	mov di,word[here]
	mov word[previous],di	;later use

mov cx,5
f1:
	mov word[es:di],ax
	add di,2
	loop f1

add di,158

mov cx,5
f2:
	mov word[es:di],ax
	sub di,2
	loop f2

add di,162
mov cx,5
f3:
	mov word[es:di],ax
	add di,2
	loop f3			; obj printed till now
;______________________________________________________________________________________________

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
cmp dx,1
jne notPossiblef

mov ah,01110000b

cmp word[es:di+480],ax	;if matches
jne notPossiblef
cmp word[es:di+472],ax	;&& matches
jne notPossiblef


add word[cs:totalScore],10		;add 10
push word[cs:totalScore]
call printScore			;print score



;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
notPossiblef:






;obj3 being printed
;********************************************************************************************************************************

mov ax,0
mov ah,01100000b			;brown
mov al,0h


	mov di,word[there]		;"here" is basically the starting offset to print an obj
	mov cx,3

l111m:
	mov word[es:di],ax
	add di,2
	loop l111m


add di,152
mov cx,5

l112m:
	mov word[es:di],ax
	add di,2
	loop l112m

add di,152
mov cx,3

l113:
	mov word[es:di],ax
	add di,2
	loop l113			;object printed



;********************************************************************************************************************************


;----------------------------------------------

;call INFINITE
;call INFINITE
call INFINITEm
call INFINITEm
;------------------------------------------------

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
cmp dx,1
jne notPossible311

mov ah,01110000b
add di,2
cmp word[es:di+480],ax	;if matches
jne notPossible311
cmp word[es:di+472],ax	;&& matches
jne notPossible311


add word[cs:totalScore],5		;add 5
push word[cs:totalScore]
call printScore			;print score



;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
notPossible311







;heree 1st obj being cleared
;_______________________________________________________________________________
	mov di,word[previous]

mov cx,5
mov ah,00110000b ;sky blue				;00000000b  black
prev:
	mov word[es:di],ax
	add di,2
	loop prev


;add word[here],160
;-----------------------------------
	mov si,di
;----------------------------------
;_______________________________________________________________________________


;obj3 being cleared
;********************************************************************************************************************************
mov ah,00110000b ;sky blue				;00000000b black

	mov di,word[there]
	mov cx,3

l8m1:
	mov word[es:di],ax
	add di,2
	loop l8m1


add di,152
mov cx,5

l9m1:
	mov word[es:di],ax
	add di,2
	loop l9m1

add di,152
mov cx,3

l10m1:
	mov word[es:di],ax
	add di,2
	loop l10m1			;object cleared / background retained





;********************************************************************************************************************************


add word[here],160
add word[there],160

dec dx
cmp dx,0
jne keepDoing



;clearing some left out marks of obj2 (itself)
;+++++++++++++++++++++++++++++++++++++++++++++++
add word[here],160
call INFINITEm
call INFINITEm

mov di,si
;clearing the second last and last line
add di,150
mov cx,5
mov ah,00110000b ;sky blue
secondLast:
	mov word[es:di],ax
	add di,2
	loop secondLast

add di,150
mov cx,5
Last:
	mov word[es:di],ax
	add di,2
	loop Last


	
 mov word[here],40;


	pop es
	pop ax
	pop dx
	ret 
;####################################################################################################################
;####################################################################################################################

;___________________________________________________________________________
GenRandPos:


    mov  ax, dx
    xor  dx, dx
    mov  cx, 7    			;7 produces best (0654321)
    div  cx       ; here dx contains the remainder of the division - from 0 to 9


mov word[randPos],dx

   add  dl, '0'  ; to ascii from '0' to '9'
   ;mov ah, 2h   ; call interrupt to display a value in DL
   ;int 21h    
RET   
;___________________________________________________________________________

;___________________________________________________________________________
GenRandObj:


    mov  ax, dx
    xor  dx, dx
    mov  cx, 7    			;7 produces best (0654321)
    div  cx       ; here dx contains the remainder of the division - from 0 to 9


mov word[randObj],dx

   add  dl, '0'  ; to ascii from '0' to '9'
   ;mov ah, 2h   ; call interrupt to display a value in DL
   ;int 21h    
RET   
;___________________________________________________________________________






;+++++++++++++++++++++++++++++
;	obj1 brings objj 2 with it
;+++++++++++++++++++++++++++++
;______
obj1m:		;15 points (dark blue)
;______
	pusha

	mov ax, 0xb800 
 	mov es, ax ; 

mov word[cs:points],10

	mov dx,15	;15 rows

b1Again:

;_______________________________________________________________________
mov ax,0
mov ah,00010000b			;dark blue
mov al,0h


	mov di,word[here]
	mov word[es:di],ax

	add di,158
	mov cx,3
b1:
	mov word[es:di],ax
	add di,2
	loop b1

	add di,152
	mov cx,5

b2:
	mov word[es:di],ax
	add di,2
	loop b2			;obj printed
;_______________________________________________________________________

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
cmp dx,1
jne notPossible1

mov ah,01110000b
sub di,2
cmp word[es:di+480],ax	;if matches
jne notPossible1
cmp word[es:di+472],ax	;&& matches
jne notPossible1


add word[cs:totalScore],15		;add 15
push word[cs:totalScore]
call printScore			;print score



;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
notPossible1:







; here we print the 2nd obj to move simultaneously (obj2)
;*********************************************************************************
mov ax,0
mov ah,01010000b	;pink			;00110000b sky blue
mov al,0h

	mov di,word[there]
	mov word[previous1],di	;later use

mov cx,5
f11:
	mov word[es:di],ax
	add di,2
	loop f11

add di,158

mov cx,5
f21:
	mov word[es:di],ax
	sub di,2
	loop f21

add di,162
mov cx,5
f31:
	mov word[es:di],ax
	add di,2
	loop f31			; obj printed till now



;*********************************************************************************





;call INFINITE
;call INFINITE
;call INFINITE
call INFINITEm
call INFINITEm
;call INFINITE
;call INFINITE

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
cmp dx,1
jne notPossiblefrrr

mov ah,01110000b

cmp word[es:di+480],ax	;if matches
jne notPossiblefrrr
cmp word[es:di+472],ax	;&& matches
jne notPossiblefrrr


add word[cs:totalScore],10		;add 10
push word[cs:totalScore]
call printScore			;print score



;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
notPossiblefrrr:



;____________________________________________________________________________________
mov ah,00110000b ;sky blue				;black 00000000b

	mov di,word[here]
	mov word[es:di],ax

	add di,158
	mov cx,3
b3:
	mov word[es:di],ax
	add di,2
	loop b3

	add di,152
	mov cx,5

b4:
	mov word[es:di],ax
	add di,2
	loop b4			;obj printed
;____________________________________________________________________________________


; here we remove the 2nd obj to move simultaneously (obj1)
;********************************************************************************************************


	mov di,word[previous1]

mov cx,5
mov ah,00110000b ;sky blue				;00000000b  black
prev1:
	mov word[es:di],ax
	add di,2
	loop prev1


;add word[here],160
;-----------------------------------
	mov si,di
;----------------------------------




;********************************************************************************************************






add word[here],160
add word[there],160



dec dx
cmp dx,0
jne b1Again





;++++++++++++++++++++++++++++++++++++++++++++++
mov di,si
;clearing the second last and last line
add di,150
mov cx,5
mov ah,00110000b ;sky blue
secondLast1:
	mov word[es:di],ax
	add di,2
	loop secondLast1

add di,150
mov cx,5
Last1:
	mov word[es:di],ax
	add di,2
	loop Last1


;++++++++++++++++++++++++++++++++++++++++++++



mov word[here],40
mov word[there],40





;__________________________________________________

	

	popa

	ret

;---------------------------------------------------------------------------------------------









;_______________________________________________________

;********************************
;obj3 brings bomb with it!!!
;*******************************
;____
obj3m:		;5 points (brown)
;____

	pusha
;----------------------------

;----------------------------
	mov ax, 0xb800 
 	mov es, ax ; 

mov word[cs:points],15

	mov dx,15		;15 rows


;brown being  printed
;____________________________________________________________________________
obj3Again:


mov ax,0
mov ah,01100000b			;brown
mov al,0h


	mov di,word[here]		;"here" is basically the starting offset to print an obj
	mov cx,3

l11m:
	mov word[es:di],ax
	add di,2
	loop l11m


add di,152
mov cx,5

l12m:
	mov word[es:di],ax
	add di,2
	loop l12m

add di,152
mov cx,3

l13:
	mov word[es:di],ax
	add di,2
	loop l13			;object printed
;____________________________________________________________________________

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
cmp dx,1
jne notPossible3

mov ah,01110000b
add di,2
cmp word[es:di+480],ax	;if matches
jne notPossible3
cmp word[es:di+472],ax	;&& matches
jne notPossible3


add word[cs:totalScore],5		;add 5
push word[cs:totalScore]
call printScore			;print score



;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
notPossible3:








;bomb being printed
;*****************************************************************************************************************
mov ax,0
mov ah,01000000b			;red
mov al,0h

	
	mov di,word[there]
	mov word[es:di],ax

	add di,8
	mov word[es:di],ax

add di,154
mov cx,3

k11:
	mov word[es:di],ax
	add di,2
	loop k11


add di,152
mov word[es:di],ax

	add di,8
	mov word[es:di],ax			;bomb printed




;*****************************************************************************************************************




;^^^^^^^^^^^^^^^^^^^^^^^^^^^bucketBomb collision check^^^^^^^^^^^^^^^^^^^^^^^^
cmp dx,1
jne notPossibleB1

mov ah,01110000b

cmp word[es:di+480],ax	;if matches
jne notPossibleB1
cmp word[es:di+472],ax	;&& matches
jne notPossibleB1


mov word[gameOver],1
;call khatam		;terminate prog (since collision with bomb)




;^^^^^^^^^^^^^^^^^^^^^^^^^^^bucketBomb collision check^^^^^^^^^^^^^^^^^^^^^^^^
notPossibleB1:








call INFINITEm
call INFINITEm




;______________________________________________________________________


;brown being cleared
;__________________________________________________
mov ah,00110000b ;sky blue				;00000000b black

	mov di,word[here]
	mov cx,3

l8m:
	mov word[es:di],ax
	add di,2
	loop l8m


add di,152
mov cx,5

l9m:
	mov word[es:di],ax
	add di,2
	loop l9m

add di,152
mov cx,3

l10m:
	mov word[es:di],ax
	add di,2
	loop l10m			;object cleared / background retained


;______________________________________________________________________


;bomb being cleared
;*****************************************************************************************************************
mov ah,00110000b ;sky blue			;00000000b black

	
	mov di,word[there]
	mov word[es:di],ax

	add di,8
	mov word[es:di],ax

add di,154
mov cx,3

k22:
	mov word[es:di],ax
	add di,2
	loop k22


add di,152
mov word[es:di],ax

	add di,8
	mov word[es:di],ax			;bomb printed





;*****************************************************************************************************************






add word[here],160
add word[there],160

sub dx,1
cmp dx ,0
jne obj3Again



mov word[here],40
mov word[there],50


	
;_____________________________________________
	popa

	ret

;---------------------------------------------------------------------------------------------






;---------------------------------------------------------------------------------------------

;_____
bombm:
;_____

	pusha

	mov ax, 0xb800 
 	mov es, ax ; 

;mov word[cs:points],-1

	mov dx,15		;15 rows

bombAgain:

;bomb being printed
;_________________________________________________________________________
mov ax,0
mov ah,01000000b			;red
mov al,0h

	
	mov di,word[here]
	mov word[es:di],ax

	add di,8
	mov word[es:di],ax

add di,154
mov cx,3

k1:
	mov word[es:di],ax
	add di,2
	loop k1


add di,152
mov word[es:di],ax

	add di,8
	mov word[es:di],ax			;bomb printed
;_________________________________________________________________________


;^^^^^^^^^^^^^^^^^^^^^^^^^^^bucketBomb collision check^^^^^^^^^^^^^^^^^^^^^^^^
cmp dx,1
jne notPossibleB

mov ah,01110000b

cmp word[es:di+480],ax	;if matches
jne notPossibleB
cmp word[es:di+472],ax	;&& matches
jne notPossibleB


mov word[gameOver],1
;call khatam		;terminate prog (since collision with bomb)




;^^^^^^^^^^^^^^^^^^^^^^^^^^^bucketBomb collision check^^^^^^^^^^^^^^^^^^^^^^^^
notPossibleB:


call INFINITEm
call INFINITEm
call INFINITEm




;bomb being cleared
;_________________________________________________________________________

mov ah,00110000b ;sky blue			;00000000b black

	
	mov di,word[here]
	mov word[es:di],ax

	add di,8
	mov word[es:di],ax

add di,154
mov cx,3

k2:
	mov word[es:di],ax
	add di,2
	loop k2


add di,152
mov word[es:di],ax

	add di,8
	mov word[es:di],ax			;bomb cleared

add word[here],160
;_________________________________________________________________________
dec dx
cmp dx,0
jne bombAgain




mov word[here],40

;_____________________________________________
	popa

	ret

;---------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------












;===============================================================================================================
;===============================================================================================================
;					END OF THE MOVEMENT SCREEN  CODE!!!
;===============================================================================================================
;===============================================================================================================

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;				objects OF "EASY" LEVEL
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;---------------------------------------------------------------------------------------------

;_____
bombmE:
;_____

	pusha

	mov ax, 0xb800 
 	mov es, ax ; 

;mov word[cs:points],-1

	mov dx,15		;15 rows

bombAgainE:

mov ax,0
mov ah,01000000b			;red
mov al,0h

	
	mov di,word[here]
	mov word[es:di],ax

	add di,8
	mov word[es:di],ax

add di,154
mov cx,3

k1E:
	mov word[es:di],ax
	add di,2
	loop k1E


add di,152
mov word[es:di],ax

	add di,8
	mov word[es:di],ax			;bomb printed



;^^^^^^^^^^^^^^^^^^^^^^^^^^^bucketBomb collision check^^^^^^^^^^^^^^^^^^^^^^^^
cmp dx,1
jne notPossibleBE

mov ah,01110000b

cmp word[es:di+480],ax	;if matches
jne notPossibleBE
cmp word[es:di+472],ax	;&& matches
jne notPossibleBE


mov word[gameOver],1
call khatam		;terminate prog (since collision with bomb)




;^^^^^^^^^^^^^^^^^^^^^^^^^^^bucketBomb collision check^^^^^^^^^^^^^^^^^^^^^^^^
notPossibleBE:


call INFINITEm
call INFINITEm
call INFINITEm

;__________________________________


mov ah,00110000b ;sky blue			;00000000b black

	
	mov di,word[here]
	mov word[es:di],ax

	add di,8
	mov word[es:di],ax

add di,154
mov cx,3

k2E:
	mov word[es:di],ax
	add di,2
	loop k2E


add di,152
mov word[es:di],ax

	add di,8
	mov word[es:di],ax			;bomb printed

add word[here],160

dec dx
cmp dx,0
jne bombAgainE




mov word[here],40

;_____________________________________________
	popa

	ret

;---------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------

;*******************************************************************************************************************************
;*******************************************************************************************************************************

;_______________________________________________________
;____
obj3mE:		;5 points (brown)
;____

	pusha

	mov ax, 0xb800 
 	mov es, ax ; 

mov word[cs:points],15

	mov dx,15		;15 rows


obj3AgainE:


mov ax,0
mov ah,01100000b			;brown
mov al,0h


	mov di,word[here]		;"here" is basically the starting offset to print an obj
	mov cx,3

l11mE:
	mov word[es:di],ax
	add di,2
	loop l11mE


add di,152
mov cx,5

l12mE:
	mov word[es:di],ax
	add di,2
	loop l12mE

add di,152
mov cx,3

l13E:
	mov word[es:di],ax
	add di,2
	loop l13E			;object printed


;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
cmp dx,1
jne notPossible3E

mov ah,01110000b
add di,2
cmp word[es:di+480],ax	;if matches
jne notPossible3E
cmp word[es:di+472],ax	;&& matches
jne notPossible3E


add word[cs:totalScore],5		;add 5
push word[cs:totalScore]
call printScore			;print score



;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
notPossible3E:





call INFINITEm
call INFINITEm






;__________________________________________________
mov ah,00110000b ;sky blue				;00000000b black

	mov di,word[here]
	mov cx,3

l8mE:
	mov word[es:di],ax
	add di,2
	loop l8mE


add di,152
mov cx,5

l9mE:
	mov word[es:di],ax
	add di,2
	loop l9mE

add di,152
mov cx,3

l10mE:
	mov word[es:di],ax
	add di,2
	loop l10mE			;object cleared / background retained


add word[here],160

sub dx,1
cmp dx ,0
jne obj3AgainE



mov word[here],40


	
;_____________________________________________
	popa

	ret

;---------------------------------------------------------------------------------------------
;*******************************************************************************************************************************
;*******************************************************************************************************************************

;______
objm1:		;15 points (dark blue)
;______
	pusha

	mov ax, 0xb800 
 	mov es, ax ; 

mov word[cs:points],10

	mov dx,15	;15 rows

b1AgainE:


mov ax,0
mov ah,00010000b			;dark blue
mov al,0h


	mov di,word[here]
	mov word[es:di],ax

	add di,158
	mov cx,3
b1E:
	mov word[es:di],ax
	add di,2
	loop b1E

	add di,152
	mov cx,5

b2E:
	mov word[es:di],ax
	add di,2
	loop b2E			;obj printed


;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
cmp dx,1
jne notPossible1E

mov ah,01110000b
sub di,2
cmp word[es:di+480],ax	;if matches
jne notPossible1E
cmp word[es:di+472],ax	;&& matches
jne notPossible1E


add word[cs:totalScore],15		;add 15
push word[cs:totalScore]
call printScore			;print score



;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
notPossible1E:

;call INFINITE
;call INFINITE
;call INFINITE
call INFINITEm
call INFINITEm
;call INFINITE
;call INFINITE


mov ah,00110000b ;sky blue				;black 00000000b

	mov di,word[here]
	mov word[es:di],ax

	add di,158
	mov cx,3
b3E:
	mov word[es:di],ax
	add di,2
	loop b3E

	add di,152
	mov cx,5

b4E:
	mov word[es:di],ax
	add di,2
	loop b4E			;obj printed


add word[here],160



dec dx
cmp dx,0
jne b1AgainE



mov word[here],40





;__________________________________________________

	

	popa

	ret

;---------------------------------------------------------------------------------------------
;*******************************************************************************************************************************
;*******************************************************************************************************************************

;-------------
obj2mE:		;10 points (pink)
;------------

	push dx
 	push ax
	push es

	mov ax, 0xb800 
 	mov es, ax  

;mov word[cs:points],5		; this is nothing

	mov dx,15		  ;15 times: 15 rows actually 	( "print" and "clear" the obj at 15 successive rows)

keepDoingE:

mov ax,0
mov ah,01010000b		;pink/magenta			
mov al,0h

	mov di,word[here]		;"here" is basically the "randomly" generated offset(location) for the object to start falling
	mov word[previous],di	;later use
				;now the following loop (f1,f2,f3) print the object
mov cx,5
f1E:
	mov word[es:di],ax
	add di,2
	loop f1E

add di,158

mov cx,5
f2E:
	mov word[es:di],ax
	sub di,2
	loop f2E

add di,162
mov cx,5
f3E:
	mov word[es:di],ax
	add di,2
	loop f3E			; obj printed till now


;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
cmp dx,1				;when "dx=1" that means the obj is over the "row" where "bucket is present" and so we look for the collision
jne notPossiblefE

mov ah,01110000b

cmp word[es:di+480],ax	;if matches...........	"di" is the offset where the object is currently present...we add "480" to see if bucket is there or not
jne notPossiblefE
cmp word[es:di+472],ax	;&& matches........we check(collision) for this offset as well
jne notPossiblefE		; if no that means "no" collision


add word[cs:totalScore],10		;add 10	since "collision=YES".....add points to the "score" bro
push word[cs:totalScore]		;since "score" is added .....so we print the new score "right away"
call printScore			;print score



;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^bucket collision^^^^^^^^^^^^^^^^^^^^^^^^^
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

notPossiblefE:
;----------------------------------------------

;call INFINITE
;call INFINITE
call INFINITEm
call INFINITEm
;------------------------------------------------

;every obj consists of 3 rows , now we just need "clear/remove" the "top-most" row of the obj
;so we just print "sky blue" background at at the top most rwo of the object
; the following "prev" loop does this job


	mov di,word[previous]	;we had saved "here"(starting-printing-position) in the "previous" variable	.....smart hmmm	

mov cx,5				;"5" because every obj is "5" cols wide
mov ah,00110000b 			;sky blue				
prevE:
	mov word[es:di],ax
	add di,2
	loop prevE


add word[here],160			;reaching to the next row present



dec dx
cmp dx,0				; jumps to "keepDoing" 15 times
jne keepDoingE			;jump back to "keepdoing" ..........(print the object and remove the first line of the object)


call INFINITEm
call INFINITEm

;mov ah,01110000b			;nothing

;NOW SINCE WE are done printing/removing(first row) object 15 times ......the last and 2nd last row of the last obj printed havent been yet removed
; so we doing nothing bu jus removing the last wo rows in the loop named (secondLast and Last)

;clearing the second last and last line

add di,150
mov cx,5
secondLastE:
	mov word[es:di],ax
	add di,2
	loop secondLastE

add di,150
mov cx,5
LastE:
	mov word[es:di],ax
	add di,2
	loop LastE


	
 mov word[here],40					;this is nothing


	pop es
	pop ax
	pop dx
	ret 

;*******************************************************************************************************************************
;*******************************************************************************************************************************




;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;				objects OF "EASY" LEVEL ended
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;				START OF "EASY" LEVEL
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

easyLevelStart:

	pusha
;_________________

;(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((()))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

actual1:

call INFINITEm
call INFINITEm
call INFINITEm


	call GenRandPos		;(0654321)

;****************************************************position selection***************************************
	cmp word[randPos],0
	jne p6E
	mov word[here],40			;"here" is the position of appearance
	jmp ObjectE

p6E:	cmp word[randPos],6
	jne p5E
	mov word[here],60
	jmp ObjectE

p5E:	cmp word[randPos],5
	jne p4E
	mov word[here],50
	jmp ObjectE

	cmp word[randPos],4
p4E:	jne p3E
	mov word[here],80
	jmp ObjectE

p3E:	cmp word[randPos],3
	jne p2E
	mov word[here],90
	jmp ObjectE

p2E:	cmp word[randPos],2
	jne p1E
	mov word[here],70
	jmp ObjectE

p1E:	mov word[here],100
	jmp ObjectE



ObjectE:
;****************************************************object selection***************************************	
	call GenRandObj		;(0654321)

	cmp word[randObj],0
	jne O6E
	call objm1
	jmp lezGoo1

O6E:	cmp word[randObj],6
	jne O5E
	call obj3mE
	jmp lezGoo1

O5E:	cmp word[randObj],5
	jne O4E
	call objm1
	jmp lezGoo1

	cmp word[randObj],4
O4E:	jne O3E
	call objm1
	jmp lezGoo1

O3E:	cmp word[randObj],3
	jne O2E
	call obj2mE
	jmp lezGoo1

O2E:	cmp word[randObj],2
	jne O1E
	call obj3mE
	jmp lezGoo1

O1E:
	call bombmE


lezGoo1:







jmp actual1




;(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((()))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
;____________________
	popa
	ret





;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;				START OF "EASY" LEVEL ENDED
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




;##############################################################################################################
;				THE START FUNCTION CODE STARTS HERE
;##############################################################################################################

;____________________________________________________________________________________________________________________


;_________________________________________start
start:
;_________________________________________


;___________________________________________________________________________________________________________________
;					***MAIN FUNCTION OF FIRST SCREEN!***
;___________________________________________________________________________________________________________________

	call clearScreen
;+++++++++++++++++++++++++++++
	;jmp aliyan
;+++++++++++++++++++++++++++++
	call fireBall
	call clearScreen

	mov ax,540	;starting offset (bp+8)
	push ax
	mov ax, message 
 	push ax 
 	push word [length] 
 	call printstr

	mov ax,860	;starting offset (bp+8)
	push ax
	mov ax, message2
 	push ax 
 	push word [length2] 
 	call printstr



	call obj1
	call obj2
	call obj3
	
	
	mov ax,1792	;starting offset (bp+8)
	push ax
	mov ax, OBJ1
 	push ax 
 	push word [LEN1] 
 	call printstr

	mov ax,1882	;starting offset (bp+8)
	push ax
	mov ax, OBJ2
 	push ax 
 	push word [LEN2] 
 	call printstr

	mov ax,2798	;starting offset (bp+8)
	push ax
	mov ax, OBJ3
 	push ax 
 	push word [LEN3] 
 	call printstr


	call bomb
	call INFINITE2
	call INFINITE2

	mov ax,860	;starting offset (bp+8)
	push ax
	mov ax, black
 	push ax 
 	push word [length4] 
 	call printstr


	call clearBomb
	call INFINITE2
	call bomb

	call clearBomb
	call INFINITE2
	call bomb

	call clearBomb
	call INFINITE2
	call bomb

	mov ax,1838	;starting offset (bp+8)
	push ax
	mov ax, Bomb
 	push ax 
 	push word [LEN4] 
 	call printstr

	mov ax,3420	;starting offset (bp+8)
	push ax
	mov ax, message3
 	push ax 
 	push word [length3] 
 	call printstr

	call printEnter
;___________________________________________________________________________________________________________________
;					***MAIN FUNCTION OF SECOND SCREEN!***
;___________________________________________________________________________________________________________________
;+++++++++++++++++++++++++++++
	aliyan:
	
;+++++++++++++++++++++++++++++
didNotPressEnter:

	mov ah,0
	int 0x16	

	cmp ah,0x1C		;wait for the ascii of "enter" key
	jne didNotPressEnter

	call clearScreen
	;call color


;___________________________________________________________________________________________________________________
;					***MAIN FUNCTION OF to choose level !***
;___________________________________________________________________________________________________________________
	
	call clearScreen



	mov ax,540	;starting offset (bp+8)
	push ax
	mov ax, choose 
 	push ax 
 	push word [lenChoose] 
 	call printstr

	mov ax,860	;starting offset (bp+8)
	push ax
	mov ax, level1
 	push ax 
 	push word [lev1len] 
 	call printstr

	mov ax,1180	;starting offset (bp+8)
	push ax
	mov ax, level2
 	push ax 
 	push word [lev2len] 
 	call printstr

levelChoose:

	mov ah,0
	int 16h

	cmp ah,0x02	;if pressed 1
	je lev1

	cmp ah,0x03	;if pressed 2
	jne levelChoose	; if neither 1 nor 2 then ask again the choice
	jmp lev2	

;_________________________
lev1:
	mov byte[whatLevel],1
	jmp newest
	
lev2:
	mov byte[whatLevel],2



;___________________________________________________________________________________________________________________
;					***MAIN FUNCTION OF movement SCREEN!***
;___________________________________________________________________________________________________________________

newest:

;--------------------------------------------------------------------------



 xor ax, ax 
 mov es, ax 		; point es to IVT base 
 mov ax, [es:9*4] 
 mov [oldisr], ax 		; save offset of old routine 
 mov ax, [es:9*4+2] 
 mov [oldisr+2], ax 		; save segment of old routine 

 cli 			; disable interrupts 
 mov word [es:9*4], kbisr 	; store offset at n*4 
 mov [es:9*4+2], cs 		; store segment at n*4+2 
 sti 			; enable interrupts 


 ;mov dx, start 		; end of resident portion 
 ;add dx, 15 		; round up to next para 
 ;mov cl, 4 
 ;shr dx, cl 		; number of paras 


;___________________________________________________________timer

 xor ax, ax 
 mov es, ax 		; point es to IVT base
 
 cli ; disable interrupts 
 mov word [es:8*4], timer	; store offset at n*4 
 mov [es:8*4+2], cs 		; store segment at n*4+2 
 sti ; enable interrupts 

 ;mov dx, start 		; end of resident portion 
 ;add dx, 15 		; round up to next para 
 ;mov cl, 4 
 ;shr dx, cl 		; number of paras 






;_________________________
;============================================================================================================
;============================================================================================================
;============================================================================================================
	
;------------------------------------------
	call color

 	cmp byte[whatLevel],2
	je actual
	

	call easyLevelStart

;------------------------------------------


actual:

call INFINITEm
call INFINITEm
call INFINITEm





	call GenRandPos		;(0654321)

;****************************************************position selection***************************************
	cmp word[randPos],0
	jne p6
	mov word[here],40			;"here" is the position of appearance (1)
	mov word[there],70			;"there" is the position of appearance (2)
	jmp Object

p6:	cmp word[randPos],6
	jne p5
	mov word[here],60
	mov word[there],40
	jmp Object

p5:	cmp word[randPos],5
	jne p4
	mov word[here],50
	mov word[there],40
	jmp Object

	cmp word[randPos],4
p4:	jne p3
	mov word[here],80
	mov word[there],50			;"there" is the position of appearance (2)
	jmp Object

p3:	cmp word[randPos],3
	jne p2
	mov word[here],90
	mov word[there],70			;"there" is the position of appearance (2)
	jmp Object

p2:	cmp word[randPos],2
	jne p1
	mov word[here],70
	jmp Object

p1:	mov word[here],100
	mov word[there],40
	jmp Object



Object:
;****************************************************object selection***************************************	
	call GenRandObj		;(0654321)

	cmp word[randObj],0
	jne O6
	call obj1m
	jmp lezGoo

O6:	cmp word[randObj],6
	jne O5
	call obj3m
	jmp lezGoo

O5:	cmp word[randObj],5
	jne O4
	call obj1m			;obj2m
	jmp lezGoo

	cmp word[randObj],4
O4:	jne O3
	call obj1m
	jmp lezGoo

O3:	cmp word[randObj],3
	jne O2
	call obj2m
	jmp lezGoo

O2:	cmp word[randObj],2
	jne O1
	call obj3m
	jmp lezGoo

O1:
	call bombm


lezGoo:







jmp actual
	




;============================================================================================================
;============================================================================================================
;============================================================================================================ 

khatam:

;nothing happening here

 ;mov ax, 0x3100 		; terminate and stay resident 

; mov ax, 0x4c00 
 ;int 0x21 




;*********************************************************************************************************************







;___________________________________________________________________________________________________________________
;					***MAIN FUNCTION OF THIRD SCREEN!***
;___________________________________________________________________________________________________________________

;mov ah,0
;int 0x16	


	call clearScreen

	mov ax,1830	;starting offset (bp+8)
	push ax
	mov ax, message01 
 	push ax 
 	push word [length01] 
 	call printstr

	mov ax,1990	;starting offset (bp+8)
	push ax
	mov ax, message02
 	push ax 
 	push word [length02] 
 	call printstr
	
	;mov ax,2150	;starting offset (bp+8)
	;push ax
	;mov ax, message03
 	;push ax 
 	;push word [length03] 
 	;call printstr

;*************here****************
push word[cs:totalScore]
call printFinalScore			;print score		(PRINTING THE FINAL SCORE)

;********************************


	call aboveLine		; a function which prints (THE RED SPOTS)
	call bottomLine		; a function which prints (THE RED SPOTS)

				;the "ep" loop does nothing nut just clears the last screen	

	mov cx,6
ep:
	call extraPrint		;just to clear the bucket area of the end screen
	mov ah,0
	int 16h
	loop ep



;FINALLY HEADING TOWARDS THE DESTINATION
	call clearScreen

;##############################################################################################################
;					TERMINATION
;##############################################################################################################
	mov ax,0x4c00
	int 21h
;##############################################################################################################
;					TERMINATION
;##############################################################################################################




;##############################################################################################################
;				MEMORY ALLOCATION OF FIRST SCREEN STARTS HERE
;##############################################################################################################
message: db 'WELCOME TO THE GAME!' 
length: dw 20 

message2: db 'objects are loading.....' 
length2: dw 24

OBJ1: db '15 Points'
LEN1:dw 8

OBJ2: db '10 Points'
LEN2:dw 9

OBJ3: db '5 Points'
LEN3:dw 9

Bomb: db 'BOMB'
LEN4:dw 4

message3: db 'press       to play!' 
length3: dw 20

black: db '                        ' 
length4: dw 24

;##############################################################################################################
;				MEMORY ALLOCATION OF FIRST SCREEN ENDS HERE
;##############################################################################################################

;____________________________________________________________________________________________________________________


;##############################################################################################################
;				MEMORY ALLOCATION OF SECOND SCREEN STARTS HERE
;##############################################################################################################

choose: dw 'CHOOSE YOUR LEVEL'
lenChoose: dw 17

level1: dw 'press 1 for EASY level'
lev1len: dw 22

level2: dw 'press 2 for HARD level'
lev2len: dw 22

whatLevel: db 0

;##############################################################################################################
;				MEMORY ALLOCATION OF SECOND SCREEN ENDS HERE
;##############################################################################################################

;____________________________________________________________________________________________________________________


;____________________________________________________________________________________________________________________


;##############################################################################################################
;				MEMORY ALLOCATION OF movement SCREEN STARTS HERE
;##############################################################################################################

oldisr: dd 0 

position: dw 2796

tickcount: dw 0 
myTime: dw 0


randPos: dw 0
randObj: dw 0

pos: dw 0
obj: db 0

there: dw 0
here: dw 0
teen: dw 3

previous1: dw 0 
previous: dw 0
loopTimes: dw 5

b1Offset: dw 40
obj3Offset: dw 40
bombOffset:dw 40

points: dw 0		;kon sa obj ja rha h
totalScore: dw 0		;total accumulative score
gameOver: dw 0		;goes "1" if bomb hits bucket
;**************************************
; 80 purple , 48 sky ,16 dark blue ,96 orange
;**********************************

;##############################################################################################################
;				MEMORY ALLOCATION OF movement SCREEN ENDS HERE
;##############################################################################################################

;____________________________________________________________________________________________________________________



;##############################################################################################################
;				MEMORY ALLOCATION OF THIRD SCREEN STARTS HERE
;##############################################################################################################
message01: db 'GAME OVER!!!' 
length01: dw 12 

message02: db 'Score:' 
length02: dw 6


message03: db 'Time:' 
length03: dw 5

;##############################################################################################################
;				MEMORY ALLOCATION OF THIRD SCREEN ENDS HERE
;##############################################################################################################
;____________________________________________________________________________________________________________________




;====================================================================
;		EXTRA CLEARING FUNCTION
;====================================================================

extraPrint:
	pusha

	mov ax, 0xb800 
 	mov es, ax  


;----------------------------------------3040  3518
mov cx,240		;3 rows
mov di,2720

mov al,0h
mov ah,00000000b		;black

myloope:
	mov word[es:di],ax		;retain background	
	add di,2
	loop myloope
 	
;----------------------------------------

	popa
	ret

;====================================================================
;		EXTRA CLEARING FUNCTION ENDED
;====================================================================

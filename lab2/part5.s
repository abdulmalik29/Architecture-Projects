; Age History

	B  main

born	DEFB "you were born in \0"
were	DEFB "you were \0"
in	DEFB " in \0"
are	DEFB "you are \0"
this	DEFB " this year\n\0"
	ALIGN

present DEFW  2005	             ; present = 2005 // Change this code 
birth   DEFW  1959                 ; birth = 1959   // Change this code        
year   	DEFW  0                    ; year = 0       // Change this code 
age    	DEFW  1                    ; age = 1        // Change this code 
        


main
 	LDR R6, present
	LDR R7, birth
	LDR R8, year
	LDR R9, age

	; this code does print "you were born in " + str(birth) // DO NOT change the instructions below (except for part 5)
	ADR R0, born
	SVC 3
	MOV R0, R7 			; make sure this will work!
	SVC 4
	MOV R0, #10
	SVC 0
	ADD R8, R7, #1	             ; year = birth + 1 // Change this code   	

loop	CMP R8, R6 	             ; while year != present //{ Change this code
        BEQ skip
	
        
	; this code does print "you were " + str(age) + " in " + str(year) // DO NOT change the instructions below (except for part 5)
	ADR R0, were
 	SVC 3
	MOV R0, R9 ; make sure this will work!
	SVC 4
	ADR R0, in
	SVC 3
	MOV R0, R8 ; make sure this will work!
	SVC 4
	MOV R0, #10
	SVC 0
	ADD R8, R8, #1	;   year = year + 1 //Change this code
	ADD R9, R9, #1  ;   age = age + 1   //Change this code
	B loop

	; this code does print "you are " + str(age) + "this year" // DO NOT change the instructions below (except for part 5)
skip	
	ADR R0, are
	SVC 3
	MOV R0, R9 ; make sure this will work!
	SVC 4
	ADR R0, this
	SVC 3

	SVC 2 ; stop


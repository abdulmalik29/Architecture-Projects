; Hello Someone program - version 1

	LDR	R0, "Hello \0"	                ; printf("Hello ")
	SVC 	3                                       
skip	SVC	1		                ; input a character to R0
	SVC	0		                ; output the character in R0
        CMP     R0,#10
        BNE     skip	                        ; }// translate to ARM code
        LDR	R0, "and good-bye!\n\0" 	; printf("and good-bye!")
	SVC	3
	SVC  	2		                ; stop the program

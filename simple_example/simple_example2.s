// Different addressing types 
.global _start
_start:

//    MOV R0, #5 // immediate addressing (moving a immediate/constant into a register)
//    MOV R1, R0 // register direct addressing (moving data from register to register)

    // LDR = load data from stack into registers
    LDR R0, =list // Loads the first value of list into register R2, direct addressing. CPUlater look into memory
	
	// Retrieve data from list. We are moving from the stack into the register
	// Load into register R1 the value that exists at the address of R0
	LDR R1, [R0]
	// Takes the value/address from R0 adds 4 and retrieves the value in that memory location
	LDR R2,[R0, #4]
	// PRE-INCREMENT EXCLAMATION MARK
    LDR R3,[R0, #4]!
    // PRE-INCREMENT EXCLAMATION MARK
    LDR R4,[R0], #4

// get data on the stack
.data // data section in the application
list: 
    .word 4,5,-9,1,0,2-3
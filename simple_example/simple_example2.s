
// Different addressing types 
.global _start
_start:

    MOV R0, #5 // immediate addressing (moving a immediate/constant into a register)
    MOV R1, R0 // register direct addressing (moving data from register to register)

    // LDR = load data from stack into registers
    LDR R2, =list // Loads the first value of list into register R2, direct addressing


// get data on the stack
.data // data section in the application
list: 
    .word 4,5,-9,1,0,2-3
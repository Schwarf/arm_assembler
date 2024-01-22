    .global _start
    _start:
        MOV R0, #30

        MOV R7, #1 // register 7 is special on ARMv7 DE1-SoC
        SWI 0

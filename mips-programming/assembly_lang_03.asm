## Author: 2019037459
## Instructor: Dr Lighton Phiri

 ### Review of math operations in mips assembly language
## Convention
## $ ----> register


### Example one 
## Write an assembly language program that evaluates 1 + 2 + 3 + 4


.data
.text
.globl main

    main:
        addi $8, $0, 1   ### Add 1 + 0 and place the result 1 in $8
        addi $9, $0, 2   ### Add 2 + 0 and place the result 2 in $9

        add $10, $8, $9  ### Add what is in $9 to what is in $8 and place the result in $10 = 3

        ## From the question lets load 3

        addi $11, $0, 3  ### Add 3 + 0 and place the result in $11
        add $12, $10, $11 ### Add what is in $11 and $10 and place the result in $12 = 6

        ## From the question lets load 4

        addi $13, $0, 4 ### Add 4 + 0 and place the result in $13
        add $14, $12, $13 ### Add what is in $13 and $12 and place the result in register $14 = 10

        ### Lets print the final result to the console
        addi $v0, $0, 1
        add $a0, $0, $14
        syscall

        li $v0, 10  ### Make a syscall to gracefully exit the program
        syscall     ## signal the syscall

### End of program





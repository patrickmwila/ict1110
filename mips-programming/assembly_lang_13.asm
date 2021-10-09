## Author: 2019037459
## Instructor: Dr Lighton Phiri

### Write a mips assembly program that prompts a user to enter two integers and outputs
### the multiplication of the two numbers 
### note: use the mul instrunction, and later move the result from LO into any temporal 
### register mvfhi $10

.data
    purpose_of_program:     .asciiz    "This is a multiplication calculator which takes in two numbers!"
    enter_first_integer:    .asciiz    "Enter integer one: "
    enter_second_integer:   .asciiz    "Enter integer two: "
    multiplication_result:  .asciiz    "The multiplication of the two numbers you entered is: "
.text
.globl main
    main:
    li $v0, 4                           ### make a syscall to print purpose_of_program
    la $a0, purpose_of_program          ### load the address holding the content of what needs to be printed
    syscall                             ### signal the syscall

    li $v0, 4                           ### make a syscall to print enter_first_integer
    la $a0, enter_first_integer         ### load the address holding the content of what needs to be printed
    syscall

    li $v0, 5                           ### make a syscall to read in integer
    syscall                             ### signal the syscall
    move $8, $v0                        ### move the integer entered into register $

    li $v0, 4                           ### make a syscall to print enter_second_integer
    la $a0, enter_second_integer        ### load the address holding the content of what needs to be printed
    syscall                             ### signal the syscall 
    
    li $v0, 5                           ### make a syscall to read in second integer
    syscall                             ### signal the syscall
    move $9, $v0                        ### move the content of $v0 into $9

    mult $8, $9                         ### multiply what is in $8 and $9
    mflo $10                            ### move the result stored in $L0 into $10

    li $v0, 4                           ### make a syscall to print multiplication_result
    la $a0, multiplication_result       ### load the address holding the content of what needs to be printed
    syscall                             ### signal the syscall

    li $v0, 1                           ### make a syscll to print the result of multiplication stored in $10
    move $a0, $10                       ### move the content of $10 into $a0 to be printed to the console
    syscall                             ### signal the syscall

    li $v0, 10                          ### make a syscall to gracefully exit the program
    syscall                             ### signal the syscall

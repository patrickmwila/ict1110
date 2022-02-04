## Author: 2019037459
## Instructor: Dr Lighton Phiri

### This programm prompts a user to enter favourite number and in turn outputs 
### it to the console

.data
    output_message1:    .asciiz    "Hello user, enter your favourite number: "
    output_message2:    .asciiz    "Your favourite number you entered is: "
.text
.globl main
    main:
    li $v0, 4                    # make a syscall to print output_message to the user
    la $a0, output_message1      # load the address of the message to be printed
    syscall                      # signal the syscall

    li $v0, 5                    # make a syscall to read the number from the user
    syscall                      # signal the syscall
    move $8, $v0                 # move the value stored in $v0, into register 8

    li $v0, 4                    # make a syscall to print output_message2 to the user
    la $a0, output_message2      # load the address of the message to be printed
    syscall                      # signall the syscall 

    li $v0, 1                    # make a syscall to print favourite number stored in register 8
    add $a0, $0, $8              # move the value to be printed to register $a0 
    syscall                      # signal the syscall

    li $v0, 10                   # make a syscall to gracefully exit the program
    syscall                      # signal the syscall

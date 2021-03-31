## Author: 2019037459
## Instructor: Dr Lighton Phiri

 ### Prompt the user for two integers and print the sum
### Convention:
## $ ---> Register

.data
    welcome_message:     .asciiz    "This is an addition calculator of two integers!"
    user_integer_one:    .asciiz    "Enter first integer: "
    user_integer_two:    .asciiz    "Enter second integer: "
    addition_result:     .asciiz    "The sum of the two integers you entered is: "
.text
.globl main

    main:
        li $v0, 4                ### make a system call to print a welcome_message to the user.
        la $a0, welcome_message  ### load the address of the string to be printed
        syscall                  ### signal the syscall


        li $v0, 4                ### make a system call to print user_integer_one to the user.
        la $a0, user_integer_one ### load the address of the string to be printed. 
        syscall                  ### signal the syscall

        li $v0, 5                ### make a sys request to read the first integer from the user
        syscall                  ### signal the syscall
        add $8, $0, $v0          ### move the user_integer_one input into $8
        
        li $v0, 4                ### make a sys request to print user_integer_two to the user.
        la $a0, user_integer_two ### load the address of the string to be printed.
        syscall                  ### signal the syscall
        
        li $v0, 5                ### make a sys request to read the second integer from the user.
        syscall                  ### signal the syscall
        add $9, $0, $v0          ### move the user_integer_two input into register $9
        
        add $10, $8, $9          ### add the stored user_integer inputs and store result in $10

        li $v0, 4                ### make a sys request to print addition_result to the user.
        la $a0, addition_result  ### load the address of the string to be printeed 
        syscall                  ### signal the syscall

        li $v0, 1                ### make a syscall to print the addition result to the user
        add $a0, $0, $10         ### move what is in $10 into $a0 to be printed
        syscall                  ### signal the syscall

        li $v0, 10               ### make a syscall to gracefully exit the program
        syscall                  ### signal the syscall

        ### End of program








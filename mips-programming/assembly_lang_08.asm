### Write an assembly language program that prompts a user to enter their name
### and, subsquently print out hello, followed by the name they have entered.


.data
    prompt_name:      .asciiz    "Enter your full names: "
    user_input:       .asciiz    "Enter your full names here!"
    respond_to_user:  .asciiz    "Hello, "
    purpose_of_code:  .asciiz    "This is an addition calculator, of two integers."
    user_integer_one: .asciiz    "Enter first integer: "
    user_integer_two: .asciiz    "Enter second integer: "
    addition_result:  .asciiz    "The sum of the two numbers is: "
.text
.globl main

    main:
        li $v0, 4                  ## make a syscall to print prompt_name to the console
        la $a0, prompt_name        ## load the address of the prompt_name to be entered
        syscall                    ## signal the syscall

        li $v0, 8                  ## make a syscall to read user's name from the console
        la $a0, user_input         ## load the address of where the user's name will be stored
        syscall                    ## signal the syscall

        li $v0, 4                  ## make a syscall to print respond_to_user 
        la $a0, respond_to_user    ## load the address of the respond_to_user
        syscall                    ## signal the syscall
       
        li $v0, 4                  ## make a syscall to print user_input
        la $a0, user_input         ## load the address of user_input to be printed
        syscall                    ## signal the syscall

        li $v0, 4                  ## make a syscall to print purpose_of_code to the user
        la $a0, purpose_of_code    ## load the address of purpose_of_code to be printed
        syscall                    ## signal the syscall

        li $v0, 4                  ## make a syscall to print user_integer_one to the user
        la $a0, user_integer_one   ## load the address of user_integer_one to be printed
        syscall                    ## signal the syscall

        li $v0, 5                  ## make a syscall to read an integer from the user
        syscall                    ## signal the syscall
        add $8, $0, $v0            ## move the integer input to $8 

        li $v0, 4                  ## make a syscall to print user_integer_two to the user
        la $a0, user_integer_two   ## load the address of the user_integer_two to be printed
        syscall

        li $v0, 5                  ## make a syscall to read an integer from the user
        syscall                    ## signal the syscall
        add $9, $0, $v0            ## move the integer input to $9

        add $10, $8, $9            ## add what is in $8 and $9 and store the result in $10

        li $v0, 4                  ## make a syscall to print addition_result to the user
        la $a0, addition_result    ## load the address of addition_result to be printed
        syscall                    ## signal the syscall

        li $v0, 1                  ## make a syscall to print addition_result value to the user
        add $a0, $0, $10           ## move the addition_result value to register $a0
        syscall                    ## signal the syscall
        
        li $v0, 10                 ## make a syscall to gracefully exit the program
        syscall                    ## signal the syscall

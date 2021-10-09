## Author: 2019037459
## Instructor: Dr Lighton Phiri

## Write an assembly language program that prompts a user to enter their date 
## of birth (e.g. 2003) and then also prompt for the current year (e.g. 2019).
## The program should then calculate age of the user.

.data
    welcome:               .asciiz   "Welcome, what is your name? "
    user_name_input:       .asciiz   "User should enter their name here"
    greeting:              .asciiz   "Hello, "
    purpose_of_code:       .asciiz   "This program outputs your age!" 
    prompt_date_of_birth:  .asciiz   " Enter your year of birth (e.g. 2003): "
    prompt_current_year:   .asciiz   "Enter the current year: "
    output_age:            .asciiz   "You are, "
    output_age_cont:       .asciiz   "yrs old!"
.text
.globl main

    main:
        li $v0, 4                    ## print welcome
        la $a0, welcome              ## load the address welcome containing our welcome message
        syscall                      ## signal the syscall
        
        li $v0, 8                    ## make a syscall to read in user_name
        la $a0, user_name_input      ## load the name of the user in $a0
        syscall                      ## signal the syscall
        
        li $v0, 4                    ## print greeting
        la $a0, greeting             ## load the address greeting containing our greeting message
        syscall                      ## signal the syscall

        li $v0, 4                    ## make a syscall to print user_name
        la $a0, user_name_input      ## load the address "user_name_input" containing the user_name
        syscall                      ## signal the syscall

        li $v0, 4                    ## prompt purpose_of_code
        la $a0, purpose_of_code      ## load the prompt to be printed
        syscall                      ## signal the syscall
         
        li $v0, 4                    ## prompt_date_of_birth
        la $a0, prompt_date_of_birth ## load the prompt to be printed
        syscall                      ## signal the syscall

        li $v0, 5                    ## read in year of birth
        syscall                      ## signal the syscall
        add $8, $0, $v0              ## move year of birth into $8

        li $v0, 4                    ## prompt_current_year
        la $a0, prompt_current_year  ## load the prompt to be printed
        syscall                      ## signal the syscall

        li $v0, 5                    ## read in current year
        syscall                      ## signal the syscall
        add $9, $0, $v0              ## move the current year input into $9

        sub $10, $9, $8              ## subtract year_of_birth from current_year

        li $v0, 4                    ## prompt output_age
        la $a0, output_age           ## load the prompt to be printed
        syscall                      ## signal the syscall

        li $v0, 1                    ## make a syscall to print age to the console
        add $a0, $0, $10             ## move the value to be printed to $a0
        syscall                      ## signal the syscall

        li $v0, 4                    ## prompt output_age_cont
        la $a0, output_age_cont      ## load the prompt to be printed
        syscall                      ## signal the syscall

        li $v0, 10                   ## make a syscall to gracefully exit the program
        syscall                      ## signal the syscall
        
## End of program

# Write a MIPS assembly program code that prompts a user to enter their date of birth and then
# calculates and prints (i) the year they will turn 65 years of age—retirement age in the
# Republic of Zambia—and (ii) the number of years remaining, from 2018, before they clock
# 65 years of age.

#Thinking process
# Example 1999 + 65 = year_of_retirement
# years_remaining_from 2018 = year_of_retirement - 2018(before one clocks 65)

.data
    date_of_birth:         .asciiz    "Enter date of birth: "
                                       ### calculate and print year of retirement
    first_interaction:     .asciiz    "In "
    second_interaction:    .asciiz    ", you will turn 65 years, which is the age of retirement in Zambia."
    third_interaction:     .asciiz    " As of 2018, you are remaining with, "
                                       ### calculate and print years remaining
    last_interaction:      .asciiz    "yrs before you clock the age of retirement."
.text
.globl main
    main:
        li $v0, 4                 # make a syscall to print the content of date_of_birth
        la $a0, date_of_birth     # load the address: date_of_birth to be printed
        syscall                   # signal the syscall

        li $v0, 5                 # make a syscall to read current year
        syscall                   # signall the syscall
        add $8, $0, $v0           # move the user's date of birth into register $10

        addi $9, $8, 65           # add user's date_of_birth + 65, to get year_of_retirement

        li $v0, 4                 # make a syscall to print the content of #first_interaction
        la $a0, first_interaction # load the address: first_interaction to be printed
        syscall                   # signal the syscall

        li $v0, 1                 # make a syscall to print the year_of_retirement
        add $a0, $0, $9           # move the value to printed into register $a0
        syscall                   # signal the syscall

        li $v0, 4                  # make a syscall to print the content of ##second_interaction
        la $a0, second_interaction # load the address: second_interaction
        syscall                    # signal the syscall

        li $v0, 4                 # make a syscall to print the content of third_interaction
        la $a0, third_interaction # load the address third_interaction
        syscall                   # signal the syscall
        
        li $10, 2018              # load 2018 into $10

        sub $11, $9, $10          # subtract 2018 from year_of_retirement and put the result(years_remaining)

        li $v0, 1                 # make system call to print years_remaining
        add $a0, $0, $11          # load what is in $11 into $a0
        syscall                   # signal the syscall

        li $v0, 4                 # make a syscall to print last_interaction
        la $a0, last_interaction  # load the address: last_interaction
        syscall                   # signal the syscall

        li $v0, 10                # make a syscall to exit the program gracefully
        syscall                   # signal the syscall

### End of program

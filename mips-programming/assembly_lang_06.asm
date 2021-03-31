## Author: 2019037459
## Instructor: Dr Lighton Phiri

 ### Interactive mips assembly language programs
### in this example we prompt for a user input


.data
.text
.globl main


    main:
        li $v0, 5        ## make a syscall for reading an integer
        syscall          ## signal the syscall
        add $8, $0, $v0  ## store the user input into register $8
        
        
        li $v0, 5        ## make a syscall to read another value from the user
        syscall          ## signal the syscall
        add $9, $0, $v0  ## move the user input to register


        add $10, $8, $9  ## add the two user inputs and store the value in $10
        ### NOTE: the result is concatenated as it comes out as a sting of characters

        li $v0, 1         ## make a syscall to print the result of adding the two inputs of the user
        add $a0, $0, $10 ## move the value to be printed into register $a0  
        syscall           ## make a syscall to print the result to the screen  

         
        li $v0, 10        ## make a syscall to exit the program
        syscall           ## signal the syscall to exit program

### End of program





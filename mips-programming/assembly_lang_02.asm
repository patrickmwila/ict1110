### This is an assembly language program implementing addition, subtraction
### multiplication and division of numbers.

### we are going to add 2 + 4 = 6
### second, we subtract 6 - 3 = 3
### thirdly, multiply 3 * 5 = 15
### finally, divide 15 / 2 = 7.5
### Conventions:
### $ ---> stands for a register

.data
.text
.globl main


    main:
        addi $8, $0, 2  # add 2 + 0 and place it in $8
        addi $9, $0, 4  # add 4 + 0 and place it in $9
        add  $10, $8, $9 # add what is in $9 and $8, then place it in $10

        ### for us to subtract 3, first load it in a register

        addi $11, $0, 3 # add 3 + 0 and place it in $11
        sub  $12, $10, $11 # sub what is in $11 from what is in $10 and place it in $12

        ### for us to multiply $12 * 5, lets load 5

        addi $13, $0, 5 # add 5 + 0 and place it in $13
        mul  $14, $13, $12 # multiply what is in $13 and $12, place the result in $14

        ### We now divide the quotient by what is in register $8
        div  $15, $14, $8
        addi $v0, $0, 10
        syscall     ### Safely exit the program

### End of program...
### Lets test this/...

        



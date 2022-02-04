## Author: 2019037459
## Instructor: Dr Lighton Phiri

### Review of math operations in mips assembly language                         
## Convention
## $ ----> register                                                             
                                                                                                                                                                  
### Example three                                                                 
## Write an assembly language program that evaluates 2*3-4/2+8         
                                                                                                                                                                 
.data                                                                           
.text                                                                           
.globl main
    main:
        addi $8, $0, 2   ### Add 2 + 0 and place the result 2 in $8             
        addi $9, $0, 3   ### Add 3 + 0 and place the result 3 in $9             
                                                                                  
        mul $10, $8, $9  ### Mult what is in $9 to what is in $8 and place the result in $10 = 6
                                                                                  
        ## From the question lets load -4                                        
                                                                                  
        addi $11, $0, -4  ### Add -4 + 0 and place the result in $11              
        div $12, $11, $8 ### div what is in $11 by what is in $8 and place the result in $12 = -2 
        
        sub $13, $10, $12 ## Sub what is in $12 from what is in $10 = 4
                                                                                   
        add $14, $13, $8 ### Add what is in $13 and $8 and place the result in register $14 = 10 

        ### print the final result to the console
        addi $v0, $0, 1
        add $a0, $0, $14
        syscall


        li $v0, 10 ### syscall to gracefully exit the 
        syscall    ### signal the syscall
        ### End of pogram                                                                     

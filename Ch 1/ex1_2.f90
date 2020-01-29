program exe1_2
    ! This exercise ask you to add the numbers 55,555,553 and 10,000,001 and store the result in variables
    ! sum1 and sum2 which are of type real and real*8. Finally, it prints the values to the console and ask 
    ! you to compare the two results and explain the difference
    implicit none
    real   :: sum1 
    real*8 :: sum2 

    sum1 = 55555553 + 10000001
    sum2 = 55555553 + 10000001

    write(*,'(f12.2, 2x, f12.2)') sum1, sum2
    ! Once you run the program you can see that the main the results are different, although they are performing
    ! the same operation with the same numbers. This occurs because of the type of each variable. 
    ! Types real*8 are more precise and provide more accurate results. 
end program 
program exe1_6
    ! (a) Write a program that computes the n-th element of the Fibonacci-series. The main program should first read the value
    ! of an integer scalar n which determines the requested element a_n of the series. The main program should print out
    ! the result to the console using a function fib(n). This fucntion calculates a_n using a do-loop
    implicit none 
    integer :: n, j

    write(*,*) "Type the dimension of the Fibonacci series:"
    read(*,*) n 
  
    write(*,*) fib(n), binform(n)
    

contains 

    function fib(n)
        implicit none
        integer, intent(in) :: n
        integer :: fib(n)

        do j = 1, n
            if (j == 1 .or. j == 2) then
                fib(j) = 1
            else
                fib(j) = fib(j-1) + fib(j-2)
            endif 
        enddo

    end function 

    ! (b) Add to this program a function binform(n) which uses Binet's formula to compute the n-th Fibonacci number

    function binform(n)
        implicit none
        integer, intent(in) :: n
        integer :: binform(n)
        real*8 :: phi, five = 5.0

        phi = (1 + sqrt(five))/2

        do j = 1, n
            if (j == 1 .or. j == 2) then 
                binform(j) = 1
            else 
                binform(j) = (phi**j - (1 - phi)**j)/sqrt(five)
            endif 
        enddo
    end function 
    
end program 






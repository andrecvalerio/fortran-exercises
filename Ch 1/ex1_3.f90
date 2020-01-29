program exe1_3
    ! (a) Store the value 10^9 in a variable of type real*8 in three ways: 10**9, 10d0**9, 10**9d0.
    ! Repeat the same for the value 10^10. Print the values and check the result
    implicit none
    real*8 :: x, y, z, a, b, c, g, h, k, l

    x = 10**9
    y = 10d0**9
    z = 10**9d0

    ! I encountered an error while trying to compute 10**10. It says "arithmetic overflow". I was able to
    ! overcome this error by defining the variable as 10.0. This forces fortran to convert the number to real
    ! before computation.
    a = 10.0**10.0
    b = 10d0**10.0
    c = 10.0**10d0

    write(*, *) x, y, z, a, b, c 

    ! (b) Extend the program and define two real*8 variables of value 0.000000000003. The first definition ends
    ! with d0 while the second dont. Print the values with format f30.25 and explain the difference
    g = 0.000000000003d0
    h = 0.000000000003

    write(*,'(f30.25, 2x, f30.25)') g, h

    ! (c) Define two real*8 variables of value 3.1415926535. The first ends with d0 while the second dont.
    ! Print the values with format f15.12 and explain the difference. 
    k = 3.1415926535d0
    l = 3.1415926535

    write(*, '(f15.12, 2x, f15.12)') k, l 

    ! In both (b) and (c), by defining with d0 we are telling the compiler that we are using double-precision
    ! variables. As we can see from the results, this gives more accurate results. 
end program 

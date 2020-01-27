program exe1_1
    ! This exercise ask you to write a program that reads two scalars of type real*8 from the console
    ! and should compute sum, difference, multiplication and division of these two scalars
    
    implicit none
    real*8 :: x, y, sum , diff, times, ratio

    write(*,*) "Type any two numbers:"
    read(*,*) x, y


    sum = x + y
    diff = x - y
    times = x * y
    ratio = x / y

    write(*,'(f12.2, 2x, f12.2, 2x, f12.2, 2x, f12.2)') sum, diff, times, ratio
end program 
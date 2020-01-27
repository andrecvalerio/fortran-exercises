program exe1_1
    implicit none
    ! real*8 :: x, y, sum , diff, times, ratio
    integer :: x, y, sum, diff, times, ratio 

    write(*,*) "Type any two numbers:"
    read(*,*) x, y

    sum = x + y
    diff = x - y
    times = x * y
    ratio = x / y

    !write(*,'(f12.2, 2x, f12.2, 2x, f12.2, 2x, f12.2)') sum, diff, times, ratio
    write(*,'(i2, 2x, i2, 2x, i2, 2x, i2)') sum, diff, times, ratio
end program 
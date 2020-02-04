program ex1_8
    implicit none
    integer :: x, y, i, j, k, max_roll
    integer, parameter :: iter = 100, n = 2, mroll = 200
    integer :: dice(n)
    real*8 :: count_x, count_y
    x = 4
    y = 10
    count_x = 0d0
    count_y = 0d0
    max_roll = 0
    dice = 0

    do i = 1, iter
        do j = 1, mroll
            do k = 1, n
                call random_int(dice(k),1,6)
            enddo 

            if (sum(dice) == x) then
                count_x = count_x + 1d0
                max_roll = max(max_roll,j)
                exit
            elseif (sum(dice) == y) then 
                count_y = count_y + 1d0
                max_roll = max(max_roll,j)
                exit
           endif
       enddo
    enddo
    
    write(*,*) count_x/iter

    contains
    SUBROUTINE init_random_seed()
        INTEGER :: i, n, clock
        INTEGER, DIMENSION(:), ALLOCATABLE :: seed

        CALL RANDOM_SEED(size = n)
        ALLOCATE(seed(n))

        CALL SYSTEM_CLOCK(COUNT=clock)

        seed = clock + 37 * (/ (i - 1, i = 1, n) /)
        CALL RANDOM_SEED(PUT = seed)

        DEALLOCATE(seed)
    END SUBROUTINE
    
    subroutine random_int(result, intl, inth)
        implicit none
        integer, intent(in) :: intl, inth
        integer :: result
        real*8 :: u

        call init_random_seed()
        call random_number(u)

        result = intl + FLOOR((inth+1-intl)*u)
        !result = intl + int(inth*u)

    end subroutine

end program 
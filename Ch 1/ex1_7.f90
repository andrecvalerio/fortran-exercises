program exe1_7
    implicit none
    integer :: j, i
    ! Two 6-sided dices iterating 100 times
    integer, parameter :: n = 2, iter = 100, k = 6
    integer :: dice(n)
    real*8 :: x, Dsum(2:12), SimProb(2:12)
    ! set random seed
    call init_random_seed()

    ! Initializing 
    dice = 0 
    Dsum = 0d0

    do i = 1, iter
        do j = 1, n
            call random_number(x)
            dice(j) = int(k*x) + 1
        enddo 
        Dsum(sum(dice)) = Dsum(sum(dice)) + 1d0
    enddo

    SimProb = Dsum/iter*100d0
    write(*,*) SimProb

    contains
    ! Subroutine obtained at: https://gcc.gnu.org/onlinedocs/gcc-4.6.4/gfortran/RANDOM_005fSEED.html
    SUBROUTINE init_random_seed()
        INTEGER :: i, n, clock
        INTEGER, DIMENSION(:), ALLOCATABLE :: seed

        CALL RANDOM_SEED(size = n)
        ALLOCATE(seed(n))

        CALL SYSTEM_CLOCK(COUNT=clock)

        seed = clock + 37 * (/ (i - 1, i = 1, n) /)
        CALL RANDOM_SEED(PUT = seed)

        print *, "Using random seed = ", seed
        print *, " "

        DEALLOCATE(seed)
    END SUBROUTINE
    
    
end program 
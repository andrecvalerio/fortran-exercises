program ex1_10
    implicit none

    real*8 :: a, b
    real*8, parameter :: gamma = 0.5
    real*8 :: u(11)

    u = 0.0d0
    a = 1.0d0
    b = 2.0d0
    call utility_int(a, b, u)

   

contains 
    function utility(c, gamma)
        implicit none
        real*8, intent(in) :: c, gamma 
        real*8 :: utility 

        if (c < 0) then
            write(*,*) "Error: consumption value can not be negative!"
            stop
        else
            utility = (c**(1-1/gamma))/(1-1/gamma)
        endif
    end function 

    subroutine utility_int(a_int, b_int, u_int)
        implicit none
    
        real*8, intent(in) :: a_int, b_int 
        real*8, intent(out) :: u_int(:)
        real*8 :: c_int(size(u_int))
        integer :: n, j
    
        if (a_int < 0 .or. b_int < a_int) then
           stop 'Error: a cannot be negative and b must be greater than a'
        endif 
    
        n = size(u_int)
    
        do j = 1, n
            c_int(j) = a_int + dble(j-1)/dble(n-1)*&
                       (b_int - a_int) 
            u_int(j) = utility(c_int(j),gamma)
        enddo 
        
        write(*,*) u_int
    end subroutine

end program 

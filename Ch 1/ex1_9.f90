program ex1_9
    use toolbox

    implicit none 
    integer :: i
    real*8 :: c(4), gamma(4), util(size(c)) 

    c = (/12.25d0, 13.5d0, 14.75d0, 16.25d0/)
    gamma = (/0.25d0, 0.5d0, 0.75d0, 1.25d0/)

    do i = 1, size(c)
        util(i) = utility(c(i),gamma(i))
    enddo 

    !write(*,*) "My utility is equal to", util

    call plot(c, util)
    call execplot()

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

end program 
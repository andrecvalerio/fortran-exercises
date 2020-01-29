program exe1_5
    ! Given the table of the German income tax function, this exercise asks us to write a program that reads 
    ! some taxable income y of type real*8 from the console and then computes the resulting tax burden
    ! T(y), the average tax rate T(y)/y and the marginal tax rate T(y)', and prints it to the console
    implicit none 
    real*8 :: y, Ty, x, z, avg, Tmg, dz, dx

    write(*,*) "Type your taxable income:"
    read(*,*) y

    x = (y - 8130)/10000
    z = (y-13469)/10000
    dx = 1/10000
    dz = dx

    if (y >0 .and. y <= 8130 ) then 
        Ty = 0
    elseif (y >= 8131 .and. y <= 13469 ) then 
        Ty = (933.7*x + 1400)*x
    elseif (y >= 13470 .and. y <= 52881) then
        Ty = (228.74*z + 2397)*z + 1014
    elseif (y >= 52882 .and. y <= 250730) then 
        Ty = 0.42*y - 8196
    elseif (y >= 250731) then 
        Ty = 0.45*y - 15718
    endif

    avg = Ty/y 
    
    if (y >0 .and. y <= 8130 ) then 
        Tmg = 0
    elseif (y >= 8131 .and. y <= 13469 ) then 
        Tmg = 0.000018674*y - 0.0118196
    elseif (y >= 13470 .and. y <= 52881) then
        Tmg = 4.5748*10**(-6)*y + 0.177259
    elseif (y >= 52882 .and. y <= 250730) then 
        Tmg = 0.42
    elseif (y >= 250731) then 
        Tmg = 0.45
    endif

    write(*,'(8x,a, 12x, a, 12x, a)') "Ty", "avg" , "Tmg"
    write(*,'(f12.2, 2x, f12.2, 2x, f12.2)') Ty, avg, Tmg
end program 
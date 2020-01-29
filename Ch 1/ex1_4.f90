program exe1_4
    ! Write a program that evaluates a logical expression for x = 4, y = 6 and z = 8. Explain the result.
    ! Do the same for x = 4, y = 6 and z = 2 and explain.
    implicit none
    integer :: x, y, z

    x = 4
    y = 6
    z = 8

    ! The first part of the statement is not true, since y is not smaller than 4 and neither z equals to 5,
    ! however, the .or. statement is true, since x is smaller than y and  y is smaller than z. Therefore, we
    ! expect this logical expression to be true.
    write(*,*) x >= 3 .and. y <= 4 .and. z == 5 .or. x <= y .and. y < z

    z = 2

    ! The first part is not true for the same reasons as above. But now, the second part is not true either, 
    ! since y is now greater than z. Therefore, we expect this logical expression to be false.
    write(*,*) x >= 3 .and. y <= 4 .and. z == 5 .or. x <= y .and. y < z
end program 
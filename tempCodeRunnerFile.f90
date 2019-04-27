program assignment
    implicit none
    integer a
    real b
    double precision c
    character(len=6) d
    a = 55      ! a に 55 を代入する
    b = 1.23    ! b に 1.23 を代入する
    c = 1.23d0  ! c に 1.23（倍精度）を代入する
    d = 'ABCD'  ! d に ABCD を代入する
    print *, a, b, c, d
end program assignment
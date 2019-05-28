er,allocatable,dimension(:) :: a
    print *, "Enter number of data:"
    read *, n
    allocate( a(n) )
    do i = 1, n
        print *, "Enter item(", i, "):"
        read *, a(i)
    end do
    print *, "Total=", sum(a)
    deallocat
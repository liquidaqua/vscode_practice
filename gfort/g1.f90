program main
    implicit none

    ! •›ƒvƒƒOƒ‰ƒ€‚É‚Â‚¢‚Ä
    ! integer i
    ! i = 99
    ! call mysub(i)
    ! contains
    ! subroutine mysub(a)
    !     integer a
    !     print *, a
    ! end subroutine mysub
    ! subroutine my2ndsub(b)
    !     integer b
    !     print *, b*2
    ! end subroutine my2ndsub

    ! •Ï”‚Æ’è”‚É‚Â‚¢‚Ä
    character(len=5) c
    real :: r1 = 1.4e-2
    double precision :: r2 = 1.4d-2
    real,PARAMETER :: pi1 = 3.14
    double precision,PARAMETER :: pi2 = 3.14
    complex dt1
    complex(kind(0d0)) dt2
    integer,dimension(10) :: a(10)
    integer d(8)
    integer i, j, k
    type student
        character(32) :: name
        integer :: age
    end type student
    type(student) :: e, f
    e%name = "Tom"
    e%age = 21
    f = student("Dai", 17)

    c = "abcde"
    print *, c
    print *, r1, "x", r1, "x 3.14 = ", r1*r1*pi1
    print *, r2, "x", r2, "x 3.14 = ", r2*r2*pi2
    
    dt1 = (1.23, -1.4e-3)
    dt2 = (1.23d0, -1.4d-3)
    print *, "dt1: ", dt1
    print *, "dt2: ", dt2

    data a/10*34/
    data i, j, k/ 3 * 0/
    data d/8*100/
    print *, a

    print *, .true., .false.
    print *, "He's kind to me."
    print *, "e: ", e, "e%name: ", e%name
end program main

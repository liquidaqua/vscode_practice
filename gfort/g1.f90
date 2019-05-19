program main
    implicit none

    ! 副プログラムについて
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

    ! 変数と定数について
    ! character(len=5) c
    ! real :: r1 = 1.4e-2
    ! double precision :: r2 = 1.4d-2
    ! real,PARAMETER :: pi1 = 3.14
    ! double precision,PARAMETER :: pi2 = 3.14
    ! complex dt1
    ! complex(kind(0d0)) dt2
    ! integer,dimension(10) :: a(10)
    ! integer d(8)
    ! integer i, j, k
    ! type student
    !     character(32) :: name
    !     integer :: age
    ! end type student
    ! type(student) e, f
    ! e%name = "Tom"
    ! e%age = 21
    ! f = student("Dai", 17)

    ! c = "abcde"
    ! print *, c
    ! print *, r1, "x", r1, "x 3.14 = ", r1*r1*pi1
    ! print *, r2, "x", r2, "x 3.14 = ", r2*r2*pi2
    
    ! dt1 = (1.23, -1.4e-3)
    ! dt2 = (1.23d0, -1.4d-3)
    ! print *, "dt1: ", dt1
    ! print *, "dt2: ", dt2

    ! data a/10*34/
    ! data i, j, k/ 3 * 0/
    ! data d/8*100/
    ! print *, a

    ! print *, .true., .false.
    ! print *, "He's kind to me."
    ! print *, "e: ", e, "e%name: ", e%name

    ! print *, "4+3*2 = ", 4+3*2
    ! print *, "4*3**2 = ", 4*3**2

    ! 入力、出力
    ! real r, v
    ! real, PARAMETER :: pi = 3.1415927
    ! print *, "enter radius: "
    ! read *, r
    ! print *, "r * r * pi = ", r*r*pi

    ! if
    ! real bmi, h, w
    ! print *, "enter height: "
    ! read *, h
    ! print *, "enter weight: "
    ! read *, w
    ! bmi = w / (h/100)**2
    ! print *, "bmi: ", bmi
    ! if (bmi < 18.5) then
    !     print *, "worse"
    ! else if (18.5 <= bmi .and. bmi < 25) then
    !     print *, "better"
    ! else
    !     print *, "worse"
    ! end if

    ! case
    ! integer n
    ! print *, "enter integer: "
    ! read *, n
    ! select case (n)
    !     case(1)
    !         print *, "one"
    !     case(2)
    !         print *, "two"
    !     case(3:)
    !         print *, "more than three"
    ! end select

    ! do
    ! integer sum, i
    ! sum = 0
    ! do i = 2, 10, 2
    !     sum = sum + i
    ! end do
    ! print *, sum

    ! 組込み手続き
    ! integer :: i = 99
    ! real :: a = 2.5
    ! double precision :: c = 2.0
    ! complex(kind(0d0)) :: d = (2.0, 1.0)
    ! print *, "i = ", i
    ! print *, "a = ", a
    ! print *, "real(i) = ", real(i)
    ! print *, "dble(i) = ", dble(i)
    ! print *, "int(a)", int(a), " nint(a) = ", nint(a)
    ! print *, "sin(0.5) = ", sin(0.5), " sin(0.5d0) = ", sin(0.5d0)
    ! print *, "sqrt(10.0) = ", sqrt(10.0)
    ! print *, "mod(10, 7) = ", mod(10, 7)
    ! do i = iachar('A'), iachar('A')+4
    !     print *, achar(i)
    ! end do
    ! print *, "sqrt(c) = ", sqrt(c)
    ! print *, "sqrt(d) = ", sqrt(d)

    ! integer :: i = 0
    ! call print_bits(i, "i=0")
    ! i = ibset(i, 4)
    ! call print_bits(i, "ibset(i, 4)")
    ! i = not(i)
    ! call print_bits(i, "i=not(i)")
    ! i = ibclr(i, 2)
    ! call print_bits(i, "i=ibclr(i, 2)")
    ! i = ishft(i, 5)
    ! call print_bits(i, "i=ishft(i, 5)")
    ! i = ieor(i, ishft(i, 5))
    ! call print_bits(i, "i=ieor(i, ishft(i, 5))")
    ! contains
    ! subroutine print_bits(num, msg)
    !     integer num, i
    !     character(*) msg
    !     character(bit_size(num)) a
    !     a = ""
    !     do i = 1, bit_size(num)
    !         if(btest(num, i-1)) then
    !             a = trim(a) // "1"
    !         else
    !             a = trim(a) // "0"
    !         end if
    !     end do
    !     print *, a, " : ", msg
    ! end subroutine

    ! サブルーチンと関数(自作手続き)
    


end program main

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
    ! g2.f90

    ! 配列
    ! Fortran の多次元配列は列優先 (Column Major)

    ! real, DIMENSION(5) :: a
    ! real b(6), c(7)
    ! integer, DIMENSION(2, 2, 2) :: d
    ! real e(0:4)                 ! C や Java のように 0 から始まり 4 まで合計で 5 つの成分を持つ配列を宣言する例
    ! real,dimension(3:5) :: f    ! dimension 属性で指定する例。1 次元配列 3 つの成分（3 ～ 5）を持つ配列を宣言する例
    ! real :: g(100) = 0                ! 配列 g のすべての成分を 0 にする
    ! integer,dimension(3,3) :: h = 1   ! 配列 h のすべての成分を 1 にする
    ! integer i(4)
    ! data i/1,10,100,1000/  ! i(1)=1, i(2)=10, i(3)=100, i(4)=1000 をそれぞれ設定する

    ! integer a(5)
    ! real :: b(6) = (/2., 4., 6., 8., 10., 12./)
    ! real :: c(2, 3) = reshape((/1., 2., 3., 4., 5., 6./), (/2, 3/))
    ! real :: d(3, 2) = reshape((/7., 8., 9., 10., 11., 12./), shape(d))
    ! integer i, j
    ! a = (/ 1, 2, 3, 4, 5 /)
    ! do i = 1, 2
    !     do j = 1, 3
    !         print *, "c", i, j, ": ", c(i, j)
    !     end do
    ! end do

    ! integer a(3)
    ! integer, DIMENSION(3) :: b, c
    ! a = 10
    ! a = a + 1
    ! b = 1
    ! c = 2
    ! a = b + c
    ! print *, a
    ! print *, a(1), a(2), a(3)

    ! integer i, n, score(10)
    ! print *, "Please enter number of students: "
    ! read *, n
    ! do i = 1, n
    !     print *, "Enter score of student #", i, ": "
    !     read *, score(i)
    ! end do
    ! do i = 1, n
    !     print *, "Student #", i, "= ", score(i)
    ! end do

    ! integer, DIMENSION(4) :: score = (/34, 43, 22, 12/)
    ! print *, "max score: ", maxval(score)
    ! print *, "min score: ", minval(score)
    ! print *, "ave score: ", sum(score) / 4

    ! integer a(3), b(3:5), c(8,5:10)
    ! print *, "a(", lbound(a,1), ":", ubound(a,1), ")"
    ! print *, "b(", lbound(b,1), ":", ubound(b,1), ")"
    ! print *, "c(", lbound(c,1), ":", ubound(c,1), ",", lbound(c,2), ":", ubound(c,2), ")"

    ! integer a(5)
    ! a = 0
    ! a(1:3) = 90
    ! print *, a
    ! a(:) = 88
    ! print *, a
    ! a(:2) = 22
    ! a(4:) = 2
    ! print *, a
    ! a(1:5:2) = 55
    ! print *, a

    ! integer i
    ! real :: a(10)
    ! do i = 1, 10
    !     a(i) = i
    ! end do
    ! print *, "mysum = ", mysum(a)
    ! contains
    ! real function mysum(x)
    !     real,intent(in) :: x(:)
    !     integer i
    !     mysum = 0.0
    !     do i = 1, ubound(x, 1)
    !         mysum = mysum + x(i)
    !     end do
    ! end function mysum

    integer n, i
    integer, ALLOCATABLE, DIMENSION(:) :: a
    print *, "Enter number of data:"
    read *, n
    allocate( a(n) )
    do i = 1, n
        print *, "Enter item(", i, "):"
        read *, a(i)
    end do
    print *, "Total=", sum(a)
    deallocate(a)     ! 特に指定しなくても自動的に領域が解放されます、このように指定することも可能

end program main

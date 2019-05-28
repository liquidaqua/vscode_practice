! extern-error-main.f90
! 外部手続きは非推奨
! program extern_error
!     implicit none
!     real :: a = 0.0
!     call add_one(a)
!     print *, a
! end program extern_error

! subroutine add_one(a)
!     implicit none
!     integer a
!     a = a + 1
! end subroutine


! sub-contained-in-main.f90
! contains 手続きを属させることは推奨
! program contained_in_main
!     implicit none
!     real val
!     val = 1.0
!     call mysub(val)
!     contains
!     subroutine mysub(x)
!         real x
!         print *, x
!     end subroutine
! end program


! sub-contained-in-sub.f90
! subroutine mysub01(x)  ! 外部サブルーチン（どこにも含まれて（contains されて）いない）
!     implicit none ! 強く推奨（外部手続では必要）
!     real,intent(inout) :: x
!     x = addone(x)
!     contains
!     real function addone(x)
!         real x
!         addone = x + 1.0
!     end function
! end subroutine

! program contained_in_sub
!     implicit none
!     real val
!     val = 5.0
!     call mysub01(val)
!     print *, val
! end program contained_in_sub


! optional.f90
! optional引数は省略可能
! program optional
!     call mysub(1, 2, 3)
!     call mysub(1, z=3)
!     call mysub()
!     call mysub(z=3, y=2)
!     contains
!     subroutine mysub(x, y, z)
!         integer, optional :: x, y, z
!         character*80 line
!         if (present(x)) then
!             print *, "x = ", x
!         else
!             print *, "x is not present..."
!         end if
!         if (present(y)) then
!             print *, "y = ", y
!         else
!             print *, "y is not present..."
!         end if
!         if (present(z)) then
!             print *, "z = ", x
!         else
!             print *, "z is not present..."
!         end if
!         print *
!     end subroutine
! end program


! intent.f90
! 引数授受特性 intent(in||out||inout)
! program show_intent
!     implicit none
!     real x, y, z
!     x = 1.0
!     y = 2.0
!     z = 3.0
!     call mysub(x, y, z)
!     print *, x, y, z
!     contains
!     subroutine mysub(a, b, c)
!         real,intent(in) :: a       ! a が入力引数であることを明示
!         real,intent(out) :: b      ! b が出力引数であることを明示
!         real,intent(inout) :: c    ! c が入出力引数であることを明示
!         b = a * 10.0
!         c = c + 10.0
!     end subroutine
! end program show_intent

! intent-optimization.f90
program intent_optinization
    implicit none
    integer, parameter :: n = 200
    integer i
    real t1, t2
    real, DIMENSION(n, n*2, n) :: dst
    real, DIMENSION(n*2, n, n) :: src

    src = 99
    call cpu_time(t1)
    do i = 1, 10
        call mycopy_with_intent(src(::2, :, :), dst(:, ::2, :), i)
    end do
    call cpu_time(t2)
    print *, "with intent: ", t2 - t1

    call cpu_time(t1)
    do i = 1, 10
        call mycopy_without_intent(src(::2, :, :), dst(:, ::2, :), i)
    end do
    call cpu_time(t2)
    print *, "without intent: ", t2 - t1

    contains
    subroutine mycopy_with_intent(src, dst, i)
        real, DIMENSION(n, n, n), intent(in) :: src
        real, DIMENSION(n, n, n), intent(out) :: dst
        integer i
        dst = src + i
    end subroutine mycopy_with_intent

    subroutine mycopy_without_intent(src, dst, i)
        real, DIMENSION(n, n, n) :: src, dst
        integer i
        dst = src + i
    end subroutine mycopy_without_intent

end program intent_optinization

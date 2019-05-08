!Katelyn Jaing
!Hector Medina
!CPSC 479-01
!Homework 6:
!	Problem 1: compute square of N dimensional matrix (N=32)
!				using a host function
!		nvcc <filename>
!		./a.out
!	Problem 2: Fortran 90 program
!		Declare 4x4 matrix A (all values set to 5)
!		Declare 4x4 matrix B (B(i,j) = i+j)
!		Compute C = A + B
!		Replace in C elements with value 10 to value 18
!		Print A, B, C
!		gfortran <filename>
!		./a.out

program main
	implicit none

	!create a 4x4 matrix called A
	integer :: A(4, 4), i, j
	!create a 4x4 matrix called B
	integer :: B(4, 4), k, l
	!create a 4x4 matrix called C
	integer :: C(4, 4), m, n

	!initialize A to 5
	!initialize B(i, j) to i+j
	!initialize C(i, j) to A(i, j) + B(i, j)
	do i = 1, 4
		do j = 1, 4
		        A(i, j) = 5
		        B(i, j) = i + j
		        C(i, j) = A(i, j) + B( i, j)
		end do
	end do

	!Replace in C value 10 with value 18
	do i = 1, 4
		do j = 1, 4
		        if( C(i, j)==10 ) then
		                C(i, j) = 18
		        end if
		end do
	end do

	!Print C(after replacement)
	do i = 1, 4
		do j = 1, 4
		        print*, "A(", i, ", ", j, ") is ", A(i, j)
		        print*, "B(", i, ", ", j, ") is ", B(i, j)
		        print*, "C(", i, ", ", j, ") is ", C(i, j)
		end do
	end do
end program main











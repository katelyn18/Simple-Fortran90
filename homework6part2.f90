
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











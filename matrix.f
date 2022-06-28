c matrix operations
	dimension A(5,5),B(5,5),C(5,5)
	write(*,*)"enter dimn of matrix"
	read(*,*)m,n
	Write(*,*)"enter elements"
	do i = 1,m
	read(*,*)(A(i,j),j=1,n)
	enddo
	
	do i = 1,m
	read(*,*)(B(i,j),j=1,m)
	enddo
	
	do i = 1,m
	do j = 1,m
	C(i,j) = A(i,j)+B(i,j)
	enddo
	enddo
	
	do i = 1,m
	write(*,*)(A(i,j),j=1,n)
	enddo
	
	do j = 1,n
	write(*,*)(A(i,j),i=1,m)
	enddo
	
	
	stop
	end

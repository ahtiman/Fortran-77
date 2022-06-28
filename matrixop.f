c program to find matrix operations
	dimension a(10,10),b(10,10),c(10,10),d(10,10),e(10,10)
	write(*,*)"enter dim m and n"
	read(*,*)m,n
	
	do i=1,m
	read(*,*)(a(i,j),j=1,n)
	enddo
	
	do i=1,m
	read(*,*)(b(i,j),j=1,n)
	enddo
	
	do i=1,m
	read(*,*)(d(i,j),j=1,n)
	enddo
	
20	format(2x,3(2x,3f8.4,2x))
	
	do i=1,m
	write(*,20)(a(i,j),j=1,n)
	enddo
c transpose of a matrix a
	write(*,*)"transpose of a"
	do j=1,n
	write(*,20)(a(i,j),i=1,m)
	enddo
	
c addition of 2 matrices 
	do i = 1,m
	do j = 1,n
	c(i,j) = b(i,j)+d(i,j)
	enddo
	enddo
	
	write(*,*)"addition"
	
	do i = 1,m
	write(*,20)(c(i,j),j = 1,n)
	enddo
	
c matrix multiplication
	do i=1,m
	do j=1,m
	e(i,j) = 0
	enddo
	enddo

	do i=1,m
	do j=1,m
	do k=1,m
	e(i,j) = e(i,j)+b(i,k)*d(k,j)
	enddo
	enddo
	enddo
	
	write(*,*)"matrix mult"
	
	do i = 1,m
	write(*,*)(e(i,j),j = 1,n)
	enddo
	
	
	stop 
	end

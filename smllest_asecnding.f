	dimension a(100)
	write(*,*)"enter number of elements"
	read(*,*)n
	do i=1,n
	read(*,*)a(i)
	enddo
	
	ismall = a(1)
	large = a(1)
	do i=1,n
	if(a(i).lt.ismall) ismall=a(i)
	if(a(i).gt.large) large=a(i)
	enddo
	write(*,*)"smallest",ismall,"largest",large
	
	do i=1,n
	do j=1,n
	if(a(i).gt.a(j))then
	temp = a(i)
	a(i) = a(j)
	a(j) = temp
	endif
	enddo
	enddo
	
	do i=1,n
	write(*,*)a(i)
	enddo
	
	stop
	end

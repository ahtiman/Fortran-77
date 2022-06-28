c smallest highest number in the given set
c ascending and desecnding order
	open(unit=11, file="input.in", status="unknown")
	dimension a(10)
	read(11,*)(a(i),i=1,10)
	
	ismall = a(1)
	large = a(1)
	do i=1,10
	if(a(i).lt.ismall) ismall=a(i)
	if(a(i).gt.large) large=a(i)
	enddo
	
	write(*,*)"Smallest", ismall, "largest", large
	
	
	stop
	end

c trying functions
	write(*,*)"enter number of iterations"
	read(*,*)n
	fact = ifactorial(n)
	write(*,*)fact 
	stop
	end
	
	
	function ifactorial(l)
	ifactorial = 1 
	if (l.gt.1)then
	do i = 1,l
	ifactorial = ifactorial*i
	enddo
	endif
	return 
	end

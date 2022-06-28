c cos series
	write(*,*)"enter the value of x and no iternations"
	read(*,*)x,n
	pi = 3.14
	xr = x*pi/180.0
	s = 0 
	do j =0,n-1,1
	s = s+(-1)**j*xr**(2*j)/(f(j))
	write(*,*)j
	end do 
	write(*,*)s,cos(xr)
	stop
	end	
	
	
	
	function f(n)
	f = 1
	if (n.gt.1)then
	do i = 1,n
	f = f*i
	enddo
	endif
	return 
	end
	

c main program to find the exponential function
	write(6,*)"Give values of x and l"
	read(5,*)x,l 
	s = 0
	do j=0,l-1,1
	 s = s + (x**j)/ifact(j)
	 write(6,*)j
	enddo
	write(6,*)"sum of ", l, "terms is",s,"real value", exp(x)
	stop 
	end
	
	
c function to get factorial 
	function ifact(n)
	ifact = 1
	if(n.gt.1) then
	do i = 1,n
	 ifact = ifact*i
	enddo
	endif
	return
	end

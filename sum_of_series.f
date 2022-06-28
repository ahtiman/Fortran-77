c main program to find the sine series 
	write(6,*)"give values of a and l"
	read(5,*)a,l
c value of a is in deg. we convert it to radian in the next step
	pi = 3.14
	x = pi*a/180
	s = 0 
	do j = 0,l-1,1

	 s = s + ((-1)**(j)*x**(2*j+1)) / ifact(2*j+1)
	 write(6,*)j
	
	enddo
	write(6,*)"sum of ",l,"terms is",s,"real sine value", sin(x)
	
	stop
	end 
	
	
c  function to get factorial 
	function ifact(n)
	ifact = 1
	if(n.gt.1) then
	do i = 1,n
	 ifact = ifact*i
	enddo
	endif
	return
	end	
	

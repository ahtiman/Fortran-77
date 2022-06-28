c program to find factorial main_program
	write(6,*)"give the number"
	read(5,*)l
	k = ifact(l)
	write(6,*)k
	stop
	end
	
c function to get factorial 
	function ifact(n)
	ifact = 1
	if(n.gt.1) then
	do i = 1,n
	 ifact = ifact*i
	 write(*,*)ifact
	enddo
	endif
	return
	end

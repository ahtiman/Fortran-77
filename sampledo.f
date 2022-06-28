	write(*,*)"enter n and x"
	read(*,*)n,x
	c = 0
	s = 0
	do
10	if(c.lt.n)then
	s = s+x**c
	c = c+1
c	goto 10
	else
	exit
	endif
	enddo
	write(*,*)s
	stop 
	end

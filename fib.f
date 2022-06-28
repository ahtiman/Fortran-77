c fibonocci series
	Write(*,*)"Enter the number of terms"
	read(*,*)n
	s = 0
	d = 1
	i = 1
7	if(i.gt.n)then
	write(*,*)"end of the series"
	else
	a = s+d
	s = d
	d = a
	i = i+1
	write(*,*)s
	goto 7
	endif
	
	stop
	end

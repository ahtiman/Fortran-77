c False position method
	open(unit=99, file="fp.out", status="unknown")
	write(*,*)"enter error"
	read(*,*)err
5	write(*,*)"enter initial guess"
	read(*,*)a, b
	
	if(f(a)*f(b).gt.0)then
	write(*,*)"try another guess"
	goto 5
	endif
	
13	format(2x,i4,2x,f8.3,2x,f8.3)
	
	i =1
16	c = (a*f(b)-b*f(a))/(f(b)-f(a))
	write(*,13)i,c,f(c)
	write(99,13)i,c,f(c)
	if(abs(f(c)).lt.err)goto 31
	
	if(f(a)*f(c).lt.0)then
	b=c
	i=i+1
	goto 16
	else
	a=c
	i=i+1
	goto 16
	endif
	
31 	stop
	end	
	
	function f(x)
	f = x**3-27.0
	return
	end

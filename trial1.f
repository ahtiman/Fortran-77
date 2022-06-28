	open(unit=99,file="trial.out",status="unknown")
	write(*,*)"enter error"
	read(*,*)err
	write(*,*)"initial guesses"
5	read(*,*)a,b
	
	if(f(a)*f(b).gt.0)then
	write(*,*)"try another guess"
	goto 5
	endif
	
12	format(2x,i4,2x,f8.4,2x,f8.3)
	i = 1
c14	c = (a*f(b)-b*f(a))/(f(b)-f(a))
14	c = (a+b)/2.0
	write(*,12)i,c,f(c)
	write(99,12)i,c,f(c)
	if(abs(f(c)).lt.err) goto 28
	if(f(a)*f(c).lt.0)then
	b = c
	i = i+1
	goto 14
	else
	a = c
	i = i+1
	goto 14
	endif
	
28	stop
	end
	

	function f(x)
	f = x**3-(6*x**2)+11*x-6.0
	return
	end
	
	










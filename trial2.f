	open(unit=99,file="trail2.out",status="unknown")
	write(*,*)"enter error"
	read(*,*)err
4	write(*,*)"initial guess"
	read(*,*)x0
	d0 = 1000.0
	
	i =1
9	x1 = x0-(f(x0)/df(x0))
	write(*,*)i,x1,f(x1)
	write(99,*)i,x1,f(x1)
	d1 = abs(x1-x0)
	if((d1.le.err).and.(abs(f(x1)).le.err)) goto 30
	
	if(d1.gt.d0)then
	write(*,*)"try agin"
	goto 4
	endif
	x0=x1
	i = i+1
	goto 9

	
	
30	stop
	end
	
	function f(x)
	f = x**3-(6*x**2)+11*x-6.0
	return
	end
	
	
	function df(x)
	df = 3*x**2-(12*x)+11
	return
	end
	

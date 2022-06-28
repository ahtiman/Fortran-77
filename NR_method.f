c root of an equation by NR method
	open(unit = 99,file = "NR.out",status = "unknown")
	write(*,*)"enter the error value"
	read(*,*)err
10	write(*,*)"Initial condition"
	read(*,*)x0
	d0 = 1000.0
	
	i = 1
20	x1 = x0-(fun(x0)/df(x0))
	write(*,*)i,x1,fun(x1)
	write(99,*)i,x1,fun(x1)
	d1 = abs(x1-x0)
	write(*,*)"d0=",d0,"d1=",d1
	if((d1.le.err).and.(abs(fun(x1)).le.err))goto 30
	
	if(d1.gt.d0)then
	write(*,*)"Invalid initial guess, try again"
	goto 10
	endif
	
	i = i+1
	x0 = x1
	goto 20
	
30	stop
	end
	
	function fun(x)
	fun = x**3-27.0
	return
	end
	
	
	function df(x)
	df = 3*x**2
	return
	end
	

c Newton-raphson method 
	open(unit=12, file="NR.out", status="unknown")
	write(*,*)"Enter error"
	read(*,*)eps
5	write(*,*)"enter initial guess"
	read(*,*)x0
	d0 = 1000.0
	
	i = 1
10	x1 = x0-f(x0)/df(x0)
	write(*,*)i,x1,f(x1)
	write(12,*)i,x1,f(x1)
	
	d1 = abs(x1-x0)
	if((abs(f(x1)).le.eps).and.(d1.le.eps))goto 20
	
	if(d1.gt.d0)then
	write(*,*)"try another guess"
	goto 5
	endif
	
	i = i+1
	x0 =x1
	goto 10
	
	
20	stop
	end	
	
	
	function f(x)
	f = x**3-27.0
	return
	end
	
	function df(x)
	df = 3*x**2
	return
	end 

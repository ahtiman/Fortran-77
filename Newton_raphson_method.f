c root of an equation by NR method
	open(unit=99,file="Newton_raphson_method.out",status="unknown")
	write(*,*)"enter the error value"
	read(*,*)err
10	write(*,*)"Initial conditions"
	read(*,*)x0
	
	i = 1
20	x1 = x0-(fun(x0)/df(x0))
	write(*,25)i,x1,fun(x1)
	write(99,25)i,x1,fun(x1)
25	format(2x,i3,2x,f8.4,2x,f12.5)
	if(abs(fun(x1)).le.err)goto 30
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
	

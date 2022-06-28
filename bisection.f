c find root of an equation by bisection method
	
10	write(6,*)"Give the initial conditons a,b and opt"
	read(5,*)a,b,opt
	
20    c = (a+b)/2.0
	d = f(a)*f(b)
	
	if (d.gt.0) then
	write(6,*)"invalid initial conditions"
	goto 10
	endif
	
	i = 1
	
	write(6,*)c,f(c)
	if (abs(f(c)).le.opt) goto 30

      if (f(a)*f(c).lt.0) then
	write(6,*)"root lies b/w",a,"and",c 
	b = c
	i = i+1
	goto 20
	else
	write(6,*)"root lies b/w",b,"and",c 
	a = c
	i = i+1
	goto 20
	
	endif
	
30    stop
	end 
	
	
	function f(x) 
	f = x**3-27.0
	return 
	end

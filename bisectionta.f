c bisection method
	open(unit=99,file="bisection.out",status="unknown")
	write(*,*)"enter the tolernce"
	read(*,*)eps
1	write(*,*)"enter initial values"
	read(*,*) a,b
	 
	
	if(f(a)*f(b).gt.0)then 
	write(*,*)"initial values insuffient"
	write(*,*)"enter new guess"
	goto 1
	endif
	
	i = 1
10	c = (a+b)/2.0
	write(*,*)i,c,f(c)
	write(99,*)i,c,f(c)
	if (abs(f(c)).le.eps) goto 20
	
	if (f(c)*f(a).lt.0)then
	b = c
	i = i+1
	goto 10
	else 
	a = c
	i = i+1
	goto 10
	endif

20    stop
      end
      
      
      function f(x) 
	f = x**3-(6*x**2)+11*x-6.0
	return 
	end

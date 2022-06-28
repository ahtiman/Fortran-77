c false position method
	open(unit=99,file="false_posn_method.out,status="unknown")
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
10	c = (a*f(b)-b*f(a))/(f(b)-f(a))
	write(99,*)i,c,f(c)
	write(*,*)i,c,f(c)
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
      pi = 3.14
	f = 5*cos(2*pi/9)/3+11/6-2.5*cos(x)-cos((2*pi/9)-x)
	return 
	end

c bisection method
	write(*,*)"enter the error"
	read(*,*)er
	write(*,*)"enter initial values"
10	read(*,*)a,b
	
	if(f(a)*f(b).gt.0)then
	write(*,*)"insufficient initial values,try again"
	goto 10
	endif
	
	i = 1
20	c = (a+b)/2.0
	write(*,*)i,c,f(c)
	if(abs(f(c)).le.er) goto 30
	
	if(f(a)*f(c).lt.0)then
	b = c
	i = i+1
	goto 20
	else
	a = c
	i  = i+1
	goto 20
	endif
	
	
30 	stop
	end	
	
	Function f(x)
	f = x**4-(4*x**2)+1
	return
	end

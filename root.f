c program to find roots of quadratic equation
	write(*,*)"give numbers a,b,c"
10	read(*,*)a,b,c
40 	format(2x,f8.4,2x,f8.4)	
	if(a.eq.0)then
	x = -c/b
	write(*,40)x
	else
	y = (b*b)-(4*a*c)
	if(y.lt.0)then
	write(*,*)"imaginary roots try another set"
	goto 10
	elseif(y.eq.0)then
	write(*,*)"real and equal roots"
	x1 = (-b+sqrt(y))/(2.0*a)
	write(*,40)x1
	else
	write(*,*)"real and different roots"
	x1 = (-b+sqrt(y))/(2.0*a)
	x2 = (-b-sqrt(y))/(2.0*a)
	write(*,40)x1,x2
	endif
	endif
	stop
	end

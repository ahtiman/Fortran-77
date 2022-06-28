c prgm to find root quad eqn
	write(*,*)"Enter coefficients"
10	read(*,*)a,b,c
	
40  	format(2x,f8.4,2x,f8.4)	
	
	if (a.eq.0)then
	x = -c/b
	write(*,*)"not a quadratic equation"
	write(*,40)x
	endif
	goto 100
c	else
	d = b*b-4*a*c
c	if(d.lt.0)then
c	write(*,*)"imaginary roots try again"
c	goto 10
c	elseif(d.eq.0)then
c	x = (-b+sqrt(d))/(2.0*a)
c	write(*,*)"roots are equal and real"
c	write(*,40)x
c	else
c	x1 = (-b+sqrt(d))/(2.0*a)
c	x2 = (-b-sqrt(d))/(2.0*a)
c	write(*,*)"roots are real and distinct"
c	write(*,40)x1,x2
c	endif
	d = b*b-4*a*c
	if(d)25,30,20
25	write(*,*)"imaginary roots try again"
	goto 100
	if(d.gt.0) goto 20
	if(d.eq.0) goto 30
30  	x = -b/(2.0*a)
	write(*,*)x
	goto 100
	
20 	x1 = (-b+sqrt(d))/(2.0*a)
	x2 = (-b-sqrt(d))/(2.0*a)
	write(*,*)x1,x2
	

	
	
100	stop
	end

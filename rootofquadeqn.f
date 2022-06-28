c root of the quadratic equation
	write(*,*)"enter the coefficients of qudratic equation"
	read(*,*)a,b,c
	
c equation to find discriminant
	if(a.eq.0)then
	x = -c/b
	write(*,*)x
	goto 100
	endif

	d = b*b-4*a*c
	if (d.lt.0) goto 20
	if (d.gt.0) goto 30
	
        x = -b/(2.0*a)
        write(*,*)"roots are real and equal",x 
	goto 100

20      write(*,*)"roots are imaginary"
        goto 100
      
30      x1 = (-b+sqrt(d))/(2.0*a)
        x2 = (-b-sqrt(d))/(2.0*a)
        write(*,*)"roots are real and distinct",x1,x2

100     stop
        end

	

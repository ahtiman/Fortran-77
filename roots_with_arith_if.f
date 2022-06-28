c using arithematic if
	write(*,*)"Enter the coefficients of quadratic equation"
	read(*,*)a,b,c
	d = b*b-4*a*c
	if(d)10,20,30

10    write(*,*)"roots are imaginary"
	goto 100
	
20    x = -b/(2.0*a)	
      write(*,*)"roots are real and equal",x
      goto 100
      
30    x1 = (-b+sqrt(d))/(2.0*a)
	x2 = (-b-sqrt(d))/(2.0*a)
	write(*,*)"roots are real and different"
	
100   stop
	end

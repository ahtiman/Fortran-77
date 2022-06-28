c program to find sum and avg of 5 numbers
	write(*,*)"Enter 5 numbers"
	read(*,*)a,b,c,d,e
	sum = a+b+c+d+e
	avg = sum/5.0
40	format(2x,f8.3,2x,f8.3)
	write(*,40)sum,avg
	stop
	end

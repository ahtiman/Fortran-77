	pi = 3.14159
	g = 9.8
	write(*,*)"length of the pendulum"
	read(*,*)nl
	T = 2*pi*sqrt(nl/g)
	write(*,*)"time period of the pendulum",T
10	format(2x,f9.5)
	write(*,10)T
	stop
	end

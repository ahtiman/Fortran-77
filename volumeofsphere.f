	pi = 3.14159
	read(*,*)r
	vol = (4*pi*r*r*r)/3.0
	area = 4*pi*r*r
	ratio = vol/area
	write(*,*)"Volume",vol,"Area",area,"ratio",ratio
	stop
	end

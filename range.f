c program to find range of a projectile	  
	  open(unit=99,file="range.out",status="unknown")
	  pi = 3.14159
	  g =9.8
	  write(*,*)"velocity","  ", "angle"
	  read(*,*)v,theta
	  thetar = theta*pi/180.0
	  ang = sin(thetar*2)
	  range = (v*v*ang)/g
	  height = (v*v*sin(thetar)*sin(thetar))/(2*g)
40	  format(2x,f8.4)
	  write(*,*)"range = ",range
	  write(99,40)range
	  write(*,*)"height = ",height
	  write(99,40)height
	  stop
	  end

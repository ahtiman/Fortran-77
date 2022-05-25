c program to convert celcius to farenheit scale
	write(*,*)"write temperature in celcius scale"
	read(*,*)C
	write(*,*)"write temperature in Farenheit scale"
	read(*,*)F1
	
	F = (C*9)/5.0+32
	C1 = (F1-32)*5/9.0
6	format(2x,f8.3)	
	
	write(*,*)"temperature in Farenheit"
	write(*,6)F
	
	write(*,*)"temperature in Celcius"
	write(*,6)C1
	
	stop
	end
	

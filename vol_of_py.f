	write(*,*)"side","  ","width","   ","height"
	read(*,*)s,w,h
	vol = (s*w*h)/3.0
40	format(f12.5)
	write(*,40)vol
	stop
	end

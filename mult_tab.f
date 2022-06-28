c nested do loop
      n = 10
	m = 10
	do i = 1,n 
	  do j = 1,m
	  k = i*j
	  write(*,*)i,"*",j,"=",k
	  end do
	end do
	stop
	end

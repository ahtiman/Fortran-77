	DIMENSION A(5,5),B(5,5),C(5,5)
	write(*,*)"Enter order"
	READ(*,*)N
	
	write(*,*)"Enter elements"
	do i = 1,N
        Read(*,*)(A(i,j),j=1,N)
        enddo
      
        do i = 1,N
        Read(*,*)(B(i,j),j=1,N)
        enddo
      
        do i = 1,N
        do j = 1,N
        C(i,j) = A(i,j)+B(i,j)
        enddo
        enddo
        
40      format(2x,3(2x,3f8.4,2x))
        Write(*,*)"matrix is"
        do i = 1,N
        write(*,40)(C(i,j),j=1,N)
        enddo
      
        stop
        end

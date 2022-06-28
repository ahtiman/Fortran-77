! 
! Welcome to GDB Online.
! GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
! C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
! Code, Compile, Run and Debug online from anywhere in world.
! 
!! program to do the square matrix multiplication 

program matr_mult
implicit none 
integer,allocatable,dimension(:,:):: A,B,C
integer :: i,j,k,n 

print*,"Enter the size of the square matrix"
read*,n 
allocate(A(n,n))
allocate(B(n,n))
allocate(C(n,n))

do i=1,n
   do j=1,n
   print *,"Enter the matrix element of A",i,j 
   read *,A(i,j)
   end do 
end do 
do i=1,n
   do j=1,n
   print *,"Enter the matrix element of B",i,j 
   read *,B(i,j) 
   end do 
end do 

do i=1,n
   do j=1,n
      C(i,j)=0 
   end do 
end do 

! matrix multiplication 
do k=1,n
    do i=1,n
       do j=1,n
       C(i,j)=C(i,j)+ A(i,k)*B(k,j)
       end do 
    end do 
end do 
!the matrix product is given by
do i=1,n
  print *,(C(i,j),j=1,n) 
end do 
end program matr_mult
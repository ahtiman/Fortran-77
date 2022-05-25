c program to soln of an eqn by bisection method
	open(unit=99, file="bi.out", status = "unknown")
	write(*,*)"Enter optimisation"
        read(*,*)err
 10     write(*,*)"Enter initial guesses"
        read(*,*)a, b

        if(f(a)*f(b).gt.0)then
            write(*,*)"try again"
            goto 10
        endif

        i = 1
20       c = (a+b)/2.0
        write(*,*)i,c,f(c)
        write(99,*)i,c,f(c)
        if(abs(f(c)).lt.err)goto 30

        if(f(a)*f(c).lt.0)then
            b=c
            i=i+1
            goto 20
        else
            a=c
            i = i+1
            goto 20
        endif

30      stop
        end

        function f(x)
            f = x**3-27.0
            return
            end

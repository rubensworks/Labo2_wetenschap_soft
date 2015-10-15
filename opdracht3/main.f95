program main
    integer i, b
    do i = -2, 29
        b = fact_rec(i)
        print *, b
    enddo
contains
    recursive function fact_rec(n) result(m)
        integer n,m
        select case (n)
            case(1:)
                m = n*fact_rec(n-2)
            case(:-2)
                m=1
            case(0,-1)
                m=1
        end select
    end function fact_rec
end  program main

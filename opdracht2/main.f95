program main
    character(80) :: line
    integer total_lenght , middle_indent , right_indent
    line = "dit is een test"
    total_lenght= 80

    ! calculate indents depending on the lenght of the line
    right_indent = total_lenght - len_trim(line)
    middle_indent = (right_indent)/2

    ! print upper border
    print *, repeat('-',80)

    ! print left indent
    print *, trim(line)
        
    ! print middle indent
    print *,repeat(' ',middle_indent) ,trim(line)

    ! print right indent
    print *,repeat(' ',right_indent) , trim(line)

end  program main

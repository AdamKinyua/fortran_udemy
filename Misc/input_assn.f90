program input_assn

    implicit none 
    integer:: i, j, power, status

    i = 0
    j = 0

    do
     print*, 'Enter two numbers:'
     read(*,*, iostat=status) i, j
     if (status==0) exit
         print*,'Sorry, Invalid Input'
    endDo

    power = i**j
    print*, power


end program input_assn

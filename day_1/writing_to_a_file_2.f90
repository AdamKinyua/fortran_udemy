program two

    !Variables Declaration 
    implicit none 
    character(len=256):: name, city 
    integer:: age, status, unit 

    !INITIALIZING VARIABLES 
    name = "UNKNOWN"
    city = "UNKNOWN"
    age = 0

    !ASKING FOR INPUTS AND WRITING 
    do 
        print*,'Scared what?'
        print*,'Produce What?'
        print*,'How many?'
        read(*,*,iostat=status)name, city, age
        if (status==0)exit
            print*,'Invalid Input'
    endDo

    !Opening a new text file to write on

    open(newunit=unit, file="text_2.txt",status="REPLACE")
        write(unit,*)'Sacred ', name 
        write(unit,*)'produce the best ', city 
        write(unit,*)'How do you know that at your: ', age
    close(unit)
end program two

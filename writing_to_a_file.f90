program user_input
    
    implicit none 
    character(len=256)::name, city
    integer:: age, status, unit
    
    !Initializing the value of our variables 

    name = "UNKNOWN"
    age = 0
    city = "UNKNOWN"

    !Ensring that the user enters valid inputs 

    do
      print*, 'what is your name, what is your city, and how old are you?'
      read(*, *, iostat=status) name, city, age
      if (status ==0) exit
        print*, 'Sorry, invalid inputs'
    endDo

    !WRITING INTO A NEW FILE
    
    open(newunit=unit, file="file_1.txt", status="REPLACE") !Opening the File

        write(unit,*)'your name is: ' //trim(name)// "!" !Writing
        write(unit,*)'You live in: ' //trim(city)// "!"
        write(unit,*)'You look great for', age 
    close(unit) !Closing the file

end program user_input 

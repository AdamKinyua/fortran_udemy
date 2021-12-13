program user_input
    
    implicit none 
    character(len=256)::name, city
    integer:: age, status
    
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

    !Printing outputs

    print*,'your name is: ' //trim(name)// "!"
    print*,'You live in: ' //trim(city)// "!"
    print*,'You look great for', age 

end program user_input 

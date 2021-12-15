program writing_to_a_file

!Write a program that reads notes from the user, one line at a time, and saves them in a file. When the user enters "DONE", the
!program should terminate. &Additionally, if the notes file already exists, the new notes should be saved at the end of the file. The following terminal output shows how this might look.
!$ ./take_notes
!Enter some notes.
!First note
!Enter some notes.
!another note
! Enter some notes.
!more note
! Enter some notes.
!DONE
!$ cat notes.txt
!First note
!another note
!more note
!$ ./take_notes
! Enter some notes.
!even more notes
!Enter some notes.
!and more
!Enter some notes.
!DONE
!$ cat notes.txt
!First note
!another note
!more note
!even more notes
!and more
!Tips:
!Use position = 'APPEND' in your open statement
!Your read statement should start like read(*, '(A)')
!Questions for this assignment

!What happens if you don't use position = 'APPEND'?

  implicit none 

  !Declaring Variables 
  character(len=256):: bulletin_1, bulletin_2, bulletin_3
  integer:: status, unit

  !Initializing Variables
  bulletin_1 = "UNKNOWN"
  bulletin_2 = "UNKNOWN"
  bulletin_3 = "UNKNOWN"

  do
    print*,"Enter bulletin 1: "
    read(*,*,iostat=status) bulletin_1
    print*,"Enter Bulletin 2: "
    read(*,*,iostat=status) bulletin_2
    print*,"Enter Bulletin 3: "
    read(*,*,iostat=status) bulletin_3
    if (status==0) exit
      print*,"INVALID INPUT"
  endDo
  
  !Writing the output to our text file
  open(newunit=unit, file="file_2.txt", position = 'APPEND')
    write(unit,*) bulletin_1
    write(unit,*) bulletin_2
    write(unit,*) bulletin_3
  close(unit)

end program writing_to_a_file


program read_a_file

  implicit none 
  character(len=256):: paragraph
  integer:: status, unit 

  paragraph = "UNKNOWN"

  !Reading it now 
  open(newunit=unit, file="paragraph.txt", status="OLD")
    read(unit,*,iostat=status) paragraph
  close(unit)
  print*,"this is the paragraph: " //trim(paragraph)// "!" 
end program read_a_file

program take_notes

  implicit none 

  character(len=*), parameter:: notes_file = "notes.txt"
  character(len=100) :: note
  integer:: unit

  open(newunit=unit, file=notes_file, position='APPEND')

  do 
    print*,"Enter some notes. Enter 'DONE' to quit."
    read(*,'(A)') note
    if (trim(note) == "DONE") exit
    write(unit, '(A)') trim(note)
  endDo

  close(unit)
end program take_notes

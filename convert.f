PROGRAM C2BANG
! Replace any C/c in column 1 with ! on each input line

IMPLICIT NONE
CHARACTER*132 LINE

10 CONTINUE
    ! Read one whole line; unit 5 = stdin
    READ(5,'(A)',END=99) LINE

    ! Check column 1 only (Fortran fixed form card image)
    IF (LINE(1:1) .EQ. 'C' .OR. LINE(1:1) .EQ. 'c') THEN
        LINE(1:1) = '!'
    ENDIF

    ! Write modified line; unit 6 = stdout
    WRITE(6,'(A)') LINE
    GOTO 10

99 CONTINUE
END PROGRAM C2BANG

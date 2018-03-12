000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. guess.
000300 DATA DIVISION.
000400 WORKING-STORAGE SECTION.
000500 01 USR PIC 99 VALUE ZEROS.
000600 01 GUESS PIC 99 VALUE ZEROS. 
000800 PROCEDURE DIVISION.
000900 MAIN.
001000       ACCEPT GUESS FROM TIME 
001100       PERFORM 10 TIMES
001200         DISPLAY "GUESS(0-99)?" UPON CONSOLE
001300         ACCEPT USR FROM CONSOLE
001400         IF GUESS = USR THEN
001800           DISPLAY "CORRECT!" UPON CONSOLE
002300           STOP RUN 
002800         ELSE IF GUESS > USR THEN
003000           DISPLAY "TOO SMALL." UPON CONSOLE
003400         ELSE IF GUESS < USR THEN
003600           DISPLAY "TOO BIG." UPON CONSOLE
004000         END-IF
004100         END-IF
004200         END-IF
004300       END-PERFORM.
004500 STOP RUN.
004800 END PROGRAM guess.

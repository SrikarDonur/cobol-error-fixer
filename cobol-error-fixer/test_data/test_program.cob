       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTPROG.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TOTAL         PIC 9(5) VALUE ZERO.

       PROCEDURE DIVISION.
           DISPLAY "Starting program..."
           MOVE 0 TO TOTAL
           DISPLAY "Total is: ", TOTAL
           STOP RUN.

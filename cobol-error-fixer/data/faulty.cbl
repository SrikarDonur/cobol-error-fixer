       IDENTIFICATION DIVISION.
       PROGRAM-ID. TAXCALC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SALARY         PIC 9(5)V99 VALUE 60000.
       01 TAX            PIC 9(4)V99.

       PROCEDURE DIVISION.
           PERFORM COMPUTE-TAX
           DISPLAY "TAX: " TAX
           STOP RUN.

       COMPUTE-TAX.
           IF SALARY > 50000
              COMPUTE TAX = SALARY * 0.25
           ELSE
              COMPUTE TAX = SALARY * 0.1
           END-IF
       END-COMPUTE-TAX.

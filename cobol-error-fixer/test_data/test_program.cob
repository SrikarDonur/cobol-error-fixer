       WORKING-STORAGE SECTION.
       01 EOF-REACHED    PIC X(3) VALUE 'NO'.

       PROCEDURE DIVISION.
       MAIN-PARA.
           OPEN INPUT TRANSACTION-FILE
           PERFORM UNTIL EOF-REACHED = 'YES'
               READ TRANSACTION-FILE
                   AT END
                       DISPLAY "End of File."
                       MOVE 'YES' TO EOF-REACHED
                   NOT AT END
                       DISPLAY "Processing Record."
                       MOVE ACCOUNT-NUMBER TO WS-ACCOUNT-NUMBER
                       MOVE TRANSACTION-AMT TO WS-TRANSACTION-AMT
                       DISPLAY "Account: " WS-ACCOUNT-NUMBER " Amount: " WS-TRANSACTION-AMT
               END-READ
           END-PERFORM
           CLOSE TRANSACTION-FILE
           STOP RUN.

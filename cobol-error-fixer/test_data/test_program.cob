       PROCEDURE DIVISION.
           OPEN INPUT TRANSACTION-FILE.
           
           READ TRANSACTION-FILE INTO TRANS-RECORD
               AT END
                   DISPLAY "End of File."
               NOT AT END
                   DISPLAY "Processing Record."
                   MOVE ACCOUNT-NUMBER TO WS-ACCOUNT-NUMBER
                   MOVE TRANSACTION-AMT TO WS-TRANSACTION-AMT
                   DISPLAY "Account: " WS-ACCOUNT-NUMBER " Amount: " WS-TRANSACTION-AMT
           END-READ.
           
           CLOSE TRANSACTION-FILE.
           
           STOP RUN.suuuuuiiiiiiiiii

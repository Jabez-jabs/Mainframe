
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TOP-THREE-ACCOUNTS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 ACCOUNT-1.
          05 ID-1       PIC X(20).
          05 BALANCE-1  PIC 9(9)V99.

       01 ACCOUNT-2.
          05 ID-2       PIC X(20).
          05 BALANCE-2  PIC 9(9)V99.

       01 ACCOUNT-3.
          05 ID-3       PIC X(20).
          05 BALANCE-3  PIC 9(9)V99.

       01 TEMP-ID       PIC X(20).
       01 TEMP-BALANCE  PIC 9(9)V99.

       01 DISPLAY-BALANCE PIC Z(8)9.99.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

           DISPLAY "ENTER CUSTOMER ID AND BALANCE FOR ACCOUNT 1:"
           ACCEPT ID-1
           ACCEPT BALANCE-1

           DISPLAY "ENTER CUSTOMER ID AND BALANCE FOR ACCOUNT 2:"
           ACCEPT ID-2
           ACCEPT BALANCE-2

           DISPLAY "ENTER CUSTOMER ID AND BALANCE FOR ACCOUNT 3:"
           ACCEPT ID-3
           ACCEPT BALANCE-3

           *> Compare account 1 and account 2
           IF BALANCE-1 < BALANCE-2 OR
              (BALANCE-1 = BALANCE-2 AND ID-1 > ID-2)
               MOVE ID-1 TO TEMP-ID
               MOVE BALANCE-1 TO TEMP-BALANCE

               MOVE ID-2 TO ID-1
               MOVE BALANCE-2 TO BALANCE-1

               MOVE TEMP-ID TO ID-2
               MOVE TEMP-BALANCE TO BALANCE-2
           END-IF

           *> Compare account 2 and account 3
           IF BALANCE-2 < BALANCE-3 OR
              (BALANCE-2 = BALANCE-3 AND ID-2 > ID-3)
               MOVE ID-2 TO TEMP-ID
               MOVE BALANCE-2 TO TEMP-BALANCE

               MOVE ID-3 TO ID-2
               MOVE BALANCE-3 TO BALANCE-2

               MOVE TEMP-ID TO ID-3
               MOVE TEMP-BALANCE TO BALANCE-3
           END-IF

           *> Compare account 1 and account 2 again
           IF BALANCE-1 < BALANCE-2 OR
              (BALANCE-1 = BALANCE-2 AND ID-1 > ID-2)
               MOVE ID-1 TO TEMP-ID
               MOVE BALANCE-1 TO TEMP-BALANCE

               MOVE ID-2 TO ID-1
               MOVE BALANCE-2 TO BALANCE-1

               MOVE TEMP-ID TO ID-2
               MOVE TEMP-BALANCE TO BALANCE-2
           END-IF

           DISPLAY " "
           DISPLAY "TOP THREE ACCOUNTS"
           DISPLAY "CUSTOMER ID       BALANCE"

           MOVE BALANCE-1 TO DISPLAY-BALANCE
           DISPLAY ID-1 DISPLAY-BALANCE

           MOVE BALANCE-2 TO DISPLAY-BALANCE
           DISPLAY ID-2 DISPLAY-BALANCE

           MOVE BALANCE-3 TO DISPLAY-BALANCE
           DISPLAY ID-3 DISPLAY-BALANCE

           STOP RUN.

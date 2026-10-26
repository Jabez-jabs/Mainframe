IDENTIFICATION DIVISION.
PROGRAM-ID. TRANSACTION-SUMMARY.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 TRANS-ID PIC X(10).
01 TRANS-TYPE PIC X.
01 AMOUNT PIC S9(6).
01 VALID-COUNT PIC 9(3) VALUE 0.
01 REJECTED-COUNT PIC 9(3) VALUE 0.
01 TOTAL PIC 9(4) VALUE 0.
01 CHOICE PIC X.

PROCEDURE DIVISION.
    MOVE "Y" TO CHOICE
    PERFORM UNTIL CHOICE = "N"
        DISPLAY "Enter Transaction ID:"
        ACCEPT TRANS-ID
        DISPLAY "Enter Transaction Type (D/W):"
        ACCEPT TRANS-TYPE
        DISPLAY "Enter Amount:"
        ACCEPT AMOUNT

        IF TRANS-TYPE = "D" OR TRANS-TYPE = "W"
            IF AMOUNT >= 0
                ADD 1 TO VALID-COUNT
                ADD AMOUNT TO TOTAL
                DISPLAY "Valid Transaction"
            ELSE
                ADD 1 TO REJECTED-COUNT
                DISPLAY "Rejected: Negative Amount"
            END-IF
        ELSE
            ADD 1 TO REJECTED-COUNT
            DISPLAY "Rejected: Invalid Type"
        END-IF

        DISPLAY "Do you want to enter another transaction? (Y/N)"
        ACCEPT CHOICE

    END-PERFORM

    DISPLAY "Valid Records: " VALID-COUNT
    DISPLAY "Rejected Records: " REJECTED-COUNT
    DISPLAY "Valid Amount Total: " TOTAL

    STOP RUN.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVENODD.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC 9(5).

       PROCEDURE DIVISION.
           ACCEPT NUM.

           IF NUM MOD 2 = 0
               DISPLAY "EVEN NUMBER"
           ELSE
               DISPLAY "ODD NUMBER"
           END-IF.

           STOP RUN.

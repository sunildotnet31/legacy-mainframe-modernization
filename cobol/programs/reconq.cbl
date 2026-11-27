       IDENTIFICATION DIVISION.
       PROGRAM-ID. RECONQ.
      ******************************************************************
      * RECONCILIATION INQUIRY
      * Purpose : Retrieve reconciliation exceptions
      * Platform: IBM z/OS COBOL + Db2 (training starter)
      * NOTE    : Complete business rules and host variables before use.
      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           EXEC SQL INCLUDE SQLCA END-EXEC.
           EXEC SQL INCLUDE DCLTXN END-EXEC.
       01  WS-RETURN-CODE             PIC S9(4) COMP VALUE ZERO.
       01  WS-FOUND                   PIC 9 VALUE ZERO.
       01  WS-ERROR-TEXT              PIC X(120) VALUE SPACES.
       01  WS-PROGRAM-NAME            PIC X(8) VALUE 'RECONQ'.

       LINKAGE SECTION.
       01  LK-REQUEST.
           05 LK-REQUEST-ID           PIC X(20).
           05 LK-CUSTOMER-ID           PIC X(12).
           05 LK-ACCOUNT-ID            PIC X(16).
           05 LK-AMOUNT                PIC S9(9)V99 COMP-3.
       01  LK-RESPONSE.
           05 LK-STATUS-CODE           PIC X(4).
           05 LK-STATUS-MESSAGE        PIC X(80).

       PROCEDURE DIVISION USING LK-REQUEST LK-RESPONSE.
       0000-MAIN.
           INITIALIZE LK-RESPONSE
           MOVE '0000' TO LK-STATUS-CODE
           MOVE 'SUCCESS' TO LK-STATUS-MESSAGE

           PERFORM 1000-VALIDATE-REQUEST
           IF WS-RETURN-CODE = ZERO
               PERFORM 2000-PROCESS-REQUEST
           END-IF

           IF SQLCODE NOT = ZERO
               MOVE SQLCODE TO WS-RETURN-CODE
               MOVE 'DB2 ERROR - CHECK SQLCA' TO WS-ERROR-TEXT
               MOVE 'DB01' TO LK-STATUS-CODE
               MOVE WS-ERROR-TEXT TO LK-STATUS-MESSAGE
           END-IF

           GOBACK.

       1000-VALIDATE-REQUEST.
           IF LK-REQUEST-ID = SPACES
               MOVE 12 TO WS-RETURN-CODE
               MOVE '4001' TO LK-STATUS-CODE
               MOVE 'REQUEST ID IS REQUIRED'
                 TO LK-STATUS-MESSAGE
           END-IF
           .

       2000-PROCESS-REQUEST.
      * Retrieve reconciliation exceptions
           EXEC SQL
               SELECT 1
                 INTO :WS-FOUND
                 FROM ACCOUNT_TXN
                FETCH FIRST 1 ROW ONLY
           END-EXEC
           .

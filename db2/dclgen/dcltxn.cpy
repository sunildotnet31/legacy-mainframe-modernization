      * DCLGEN FOR TABLE ACCOUNT_TXN
       EXEC SQL
          DECLARE ACCOUNT_TXN
          (
             TRANSACTION_ID       CHAR(20),
             ACCOUNT_ID           CHAR(16),
             TRANSACTION_TYPE     CHAR(2),
             DEBIT_CREDIT         CHAR(1),
             AMOUNT               DECIMAL(15,2),
             CURRENCY_CODE        CHAR(3),
             CHANNEL_CODE         CHAR(3),
             REFERENCE_NO         CHAR(30),
             TXN_STATUS           CHAR(1)
          )
       END-EXEC.

       01  DCL-ACCOUNT-TXN-ROW.
           05 D-TRANSACTION-ID         PIC X(20).
           05 D-ACCOUNT-ID             PIC X(16).
           05 D-TRANSACTION-TYPE       PIC X(2).
           05 D-DEBIT-CREDIT           PIC X.
           05 D-AMOUNT                 PIC S9(13)V99 COMP-3.
           05 D-CURRENCY-CODE          PIC X(3).
           05 D-CHANNEL-CODE           PIC X(3).
           05 D-REFERENCE-NO           PIC X(30).
           05 D-TXN-STATUS             PIC X.

      * DCLGEN FOR TABLE LOAN_PAYMENT
       EXEC SQL
          DECLARE LOAN_PAYMENT
          (
             PAYMENT_ID           CHAR(20),
             LOAN_ID              CHAR(16),
             PAYMENT_AMOUNT       DECIMAL(15,2),
             PRINCIPAL_PAID       DECIMAL(15,2),
             INTEREST_PAID        DECIMAL(15,2),
             PAYMENT_STATUS       CHAR(1)
          )
       END-EXEC.

       01  DCL-LOAN-PAYMENT-ROW.
           05 D-PAYMENT-ID             PIC X(20).
           05 D-LOAN-ID                PIC X(16).
           05 D-PAYMENT-AMOUNT         PIC S9(13)V99 COMP-3.
           05 D-PRINCIPAL-PAID         PIC S9(13)V99 COMP-3.
           05 D-INTEREST-PAID          PIC S9(13)V99 COMP-3.
           05 D-PAYMENT-STATUS         PIC X.

      * DCLGEN FOR TABLE LOAN
       EXEC SQL
          DECLARE LOAN
          (
             LOAN_ID              CHAR(16),
             CUSTOMER_ID          CHAR(12),
             LOAN_TYPE            CHAR(3),
             PRINCIPAL_AMOUNT     DECIMAL(15,2),
             OUTSTANDING_AMOUNT   DECIMAL(15,2),
             INTEREST_RATE        DECIMAL(5,2),
             LOAN_STATUS          CHAR(1)
          )
       END-EXEC.

       01  DCL-LOAN-ROW.
           05 D-LOAN-ID                PIC X(16).
           05 D-CUSTOMER-ID            PIC X(12).
           05 D-LOAN-TYPE              PIC X(3).
           05 D-PRINCIPAL-AMOUNT       PIC S9(13)V99 COMP-3.
           05 D-OUTSTANDING-AMOUNT     PIC S9(13)V99 COMP-3.
           05 D-INTEREST-RATE          PIC S9(3)V99 COMP-3.
           05 D-LOAN-STATUS            PIC X.

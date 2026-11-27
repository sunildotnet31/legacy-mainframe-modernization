      * DCLGEN FOR TABLE BENEFICIARY
       EXEC SQL
          DECLARE BENEFICIARY
          (
             BENEFICIARY_ID       CHAR(16),
             CUSTOMER_ID          CHAR(12),
             BENEFICIARY_NAME     CHAR(80),
             BANK_IFSC            CHAR(11),
             BANK_ACCOUNT_NO      CHAR(24),
             BENEFICIARY_STATUS   CHAR(1)
          )
       END-EXEC.

       01  DCL-BENEFICIARY-ROW.
           05 D-BENEFICIARY-ID         PIC X(16).
           05 D-CUSTOMER-ID            PIC X(12).
           05 D-BENEFICIARY-NAME       PIC X(80).
           05 D-BANK-IFSC              PIC X(11).
           05 D-BANK-ACCOUNT-NO        PIC X(24).
           05 D-BENEFICIARY-STATUS     PIC X.

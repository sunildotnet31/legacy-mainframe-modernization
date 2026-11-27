      * DCLGEN FOR TABLE ACCOUNT
       EXEC SQL
          DECLARE ACCOUNT
          (
             ACCOUNT_ID           CHAR(16),
             CUSTOMER_ID          CHAR(12),
             BRANCH_ID            CHAR(6),
             PRODUCT_ID           CHAR(8),
             ACCOUNT_STATUS       CHAR(1),
             LEDGER_BALANCE       DECIMAL(15,2),
             AVAILABLE_BALANCE    DECIMAL(15,2),
             TXN_LIMIT            DECIMAL(13,2)
          )
       END-EXEC.

       01  DCL-ACCOUNT-ROW.
           05 D-ACCOUNT-ID             PIC X(16).
           05 D-CUSTOMER-ID            PIC X(12).
           05 D-BRANCH-ID              PIC X(6).
           05 D-PRODUCT-ID             PIC X(8).
           05 D-ACCOUNT-STATUS         PIC X.
           05 D-LEDGER-BALANCE         PIC S9(13)V99 COMP-3.
           05 D-AVAILABLE-BALANCE      PIC S9(13)V99 COMP-3.
           05 D-TXN-LIMIT              PIC S9(11)V99 COMP-3.

      * DCLGEN FOR TABLE CUSTOMER
       EXEC SQL
          DECLARE CUSTOMER
          (
             CUSTOMER_ID          CHAR(12),
             FIRST_NAME           CHAR(40),
             LAST_NAME            CHAR(40),
             EMAIL_ADDRESS        CHAR(120),
             PHONE_NUMBER         CHAR(20),
             KYC_STATUS           CHAR(1),
             CUSTOMER_STATUS      CHAR(1)
          )
       END-EXEC.

       01  DCL-CUSTOMER-ROW.
           05 D-CUSTOMER-ID            PIC X(12).
           05 D-FIRST-NAME             PIC X(40).
           05 D-LAST-NAME              PIC X(40).
           05 D-EMAIL-ADDRESS          PIC X(120).
           05 D-PHONE-NUMBER           PIC X(20).
           05 D-KYC-STATUS             PIC X.
           05 D-CUSTOMER-STATUS        PIC X.

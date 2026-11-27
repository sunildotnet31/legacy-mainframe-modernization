      * DCLGEN FOR TABLE PRODUCT
       EXEC SQL
          DECLARE PRODUCT
          (
             PRODUCT_ID           CHAR(8),
             PRODUCT_NAME         CHAR(60),
             PRODUCT_TYPE         CHAR(2),
             CURRENCY_CODE        CHAR(3),
             MIN_BALANCE          DECIMAL(13,2),
             PRODUCT_STATUS       CHAR(1)
          )
       END-EXEC.

       01  DCL-PRODUCT-ROW.
           05 D-PRODUCT-ID             PIC X(8).
           05 D-PRODUCT-NAME           PIC X(60).
           05 D-PRODUCT-TYPE           PIC X(2).
           05 D-CURRENCY-CODE          PIC X(3).
           05 D-MIN-BALANCE            PIC S9(11)V99 COMP-3.
           05 D-PRODUCT-STATUS         PIC X.

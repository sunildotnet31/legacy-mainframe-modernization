CREATE TABLE CUSTOMER (
  CUSTOMER_ID          CHAR(12)         NOT NULL,
  FIRST_NAME           CHAR(40)         NOT NULL,
  LAST_NAME            CHAR(40)         NOT NULL,
  EMAIL_ADDRESS        CHAR(120)        NOT NULL,
  PHONE_NUMBER         CHAR(20)         NOT NULL,
  KYC_STATUS           CHAR(1)          NOT NULL,
  CUSTOMER_STATUS      CHAR(1)          NOT NULL,
  PRIMARY KEY (CUSTOMER_ID)
);

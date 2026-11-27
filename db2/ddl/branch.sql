CREATE TABLE BRANCH (
  BRANCH_ID            CHAR(6)          NOT NULL,
  BRANCH_NAME          CHAR(80)         NOT NULL,
  IFSC_CODE            CHAR(11)         NOT NULL,
  CITY                 CHAR(50)         NOT NULL,
  BRANCH_STATUS        CHAR(1)          NOT NULL,
  PRIMARY KEY (BRANCH_ID),
  UNIQUE (IFSC_CODE)
);

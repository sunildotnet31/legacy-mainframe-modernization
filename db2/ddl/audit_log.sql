CREATE TABLE AUDIT_LOG (
  AUDIT_ID             CHAR(20)         NOT NULL,
  USER_ID              CHAR(12)         NOT NULL,
  PROGRAM_ID           CHAR(8)          NOT NULL,
  EVENT_TYPE           CHAR(30)         NOT NULL,
  ENTITY_KEY           CHAR(30)         NOT NULL,
  EVENT_STATUS         CHAR(1)          NOT NULL,
  EVENT_TEXT           CHAR(500)        NOT NULL,
  PRIMARY KEY (AUDIT_ID)
);

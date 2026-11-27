      * DCLGEN FOR TABLE AUDIT_LOG
       EXEC SQL
          DECLARE AUDIT_LOG
          (
             AUDIT_ID             CHAR(20),
             USER_ID              CHAR(12),
             PROGRAM_ID           CHAR(8),
             EVENT_TYPE           CHAR(30),
             ENTITY_KEY           CHAR(30),
             EVENT_STATUS         CHAR(1),
             EVENT_TEXT           CHAR(500)
          )
       END-EXEC.

       01  DCL-AUDIT-LOG-ROW.
           05 D-AUDIT-ID               PIC X(20).
           05 D-USER-ID                PIC X(12).
           05 D-PROGRAM-ID             PIC X(8).
           05 D-EVENT-TYPE             PIC X(30).
           05 D-ENTITY-KEY             PIC X(30).
           05 D-EVENT-STATUS           PIC X.
           05 D-EVENT-TEXT             PIC X(500).

      * DCLGEN FOR TABLE BRANCH
       EXEC SQL
          DECLARE BRANCH
          (
             BRANCH_ID            CHAR(6),
             BRANCH_NAME          CHAR(80),
             IFSC_CODE            CHAR(11),
             CITY                 CHAR(50),
             BRANCH_STATUS        CHAR(1)
          )
       END-EXEC.

       01  DCL-BRANCH-ROW.
           05 D-BRANCH-ID              PIC X(6).
           05 D-BRANCH-NAME            PIC X(80).
           05 D-IFSC-CODE              PIC X(11).
           05 D-CITY                   PIC X(50).
           05 D-BRANCH-STATUS          PIC X.

      * DCLGEN FOR TABLE NOTIFICATION
       EXEC SQL
          DECLARE NOTIFICATION
          (
             NOTIFICATION_ID      CHAR(20),
             CUSTOMER_ID          CHAR(12),
             CHANNEL_CODE         CHAR(3),
             DESTINATION          CHAR(120),
             MESSAGE_TEXT         CHAR(1000),
             DELIVERY_STATUS      CHAR(1)
          )
       END-EXEC.

       01  DCL-NOTIFICATION-ROW.
           05 D-NOTIFICATION-ID        PIC X(20).
           05 D-CUSTOMER-ID            PIC X(12).
           05 D-CHANNEL-CODE           PIC X(3).
           05 D-DESTINATION            PIC X(120).
           05 D-MESSAGE-TEXT           PIC X(1000).
           05 D-DELIVERY-STATUS        PIC X.

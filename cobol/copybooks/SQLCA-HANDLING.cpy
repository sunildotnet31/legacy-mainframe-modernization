      * Include SQLCA in WORKING-STORAGE:
           EXEC SQL INCLUDE SQLCA END-EXEC.
      * Check SQLCODE after every SQL operation.
      * Handle +100 as not-found where appropriate.
      * Roll back a unit of work after a failed multi-step update.

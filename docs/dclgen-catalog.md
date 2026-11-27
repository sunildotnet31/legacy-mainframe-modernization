# DCLGEN Catalog

Simplified DCLGEN members generated from the repository DDL. All columns are NOT NULL; character data uses fixed-length CHAR; DATE, TIME, TIMESTAMP and VARCHAR columns are excluded.

- `dclcust.cpy` — CUSTOMER
- `dclbran.cpy` — BRANCH
- `dclprod.cpy` — PRODUCT
- `dclacct.cpy` — ACCOUNT
- `dcltxn.cpy` — ACCOUNT_TXN
- `dclbene.cpy` — BENEFICIARY
- `dclloan.cpy` — LOAN
- `dclpaym.cpy` — LOAN_PAYMENT
- `dclaud.cpy` — AUDIT_LOG
- `dclnoti.cpy` — NOTIFICATION

These are simplified training DCLGEN-style members. Regenerate using the Db2 DCLGEN utility against the target catalog before compiling in a real z/OS environment.

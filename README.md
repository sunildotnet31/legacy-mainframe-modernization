# Legacy Banking Mainframe Training Repository

A training starter kit containing **50 COBOL program skeletons, 10 Db2 DDL table definitions, and 5 JCL batch job examples**.

## Technology assumptions
- IBM z/OS Enterprise COBOL
- IBM Db2 for z/OS
- JCL batch execution
- Banking/customer-account training domain
- INR as the sample account currency

## Repository structure
```text
cobol/
  programs/       50 COBOL program source files
  copybooks/      Shared copybooks (12 files)
db2/
  ddl/            10 Db2 CREATE TABLE scripts
  dclgen/         10 DCLGEN-style table declarations and COBOL layouts
jcl/
  batch/          5 sample batch job streams
docs/
  data-model.md
  program-catalog.md
```

## Inventory
- COBOL programs: 50
- Db2 tables: 10
- JCL batch jobs: 5

## Build and execution notes
These are **starter templates**, not production-ready or compiler-certified applications. Replace the marked TODO SQL columns, predicates, host variables, DB2 subsystem, plan/package names, load libraries, datasets, and site-specific JCL parameters before compiling or submitting jobs.

Typical Db2 precompile / compile / link-edit steps depend on your site's Enterprise COBOL and Db2 installation. Validate SQL table and column names against the DDL before precompiling.

## Suggested implementation order
1. Create the Db2 database/storage objects and run `db2/ddl/*.sql` in dependency order.
2. Complete shared request/response copybooks and program linkage contracts.
3. Implement `CUSTADD`, `CUSTINQ`, `ACCTOPN`, `ACCTINQ`, and `TXNPOST` first.
4. Add transaction commit/rollback and duplicate-request protection.
5. Complete batch input layouts, restart/checkpoint logic, abend handling, and return-code conventions.
6. Add unit, integration, volume, restart/recovery, and security tests.

## Safety
Use synthetic data only. Do not place real customer, account, card, credential, or production data in this repository. Keep secrets and environment-specific values out of source control.

## Simplified Db2 data types
All table columns are `NOT NULL`. Character columns use fixed-length `CHAR`; numeric columns use `DECIMAL`. `VARCHAR`, `DATE`, `TIME`, and `TIMESTAMP` columns are not used. DCLGEN-style members are under `db2/dclgen/` and are included by the related COBOL programs using `EXEC SQL INCLUDE`.

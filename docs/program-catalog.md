# COBOL Program Catalog

01. **CUSTINQ** — Customer inquiry; READ on `CUSTOMER`. Retrieve customer profile by customer number.
02. **CUSTADD** — Customer creation; INSERT on `CUSTOMER`. Create a customer master record.
03. **CUSTUPD** — Customer maintenance; UPDATE on `CUSTOMER`. Update customer contact details.
04. **CUSTDEL** — Customer closure; DELETE on `CUSTOMER`. Close a customer record when eligible.
05. **ACCTINQ** — Account inquiry; READ on `ACCOUNT`. Retrieve account balance and status.
06. **ACCTOPN** — Account opening; INSERT on `ACCOUNT`. Open a deposit account.
07. **ACCTCLS** — Account closure; UPDATE on `ACCOUNT`. Close an account after validation.
08. **ACCTUPD** — Account maintenance; UPDATE on `ACCOUNT`. Maintain account product and status.
09. **TXNPOST** — Transaction posting; INSERT on `ACCOUNT_TXN`. Post a debit or credit transaction.
10. **TXNINQ** — Transaction inquiry; READ on `ACCOUNT_TXN`. Retrieve transaction history.
11. **TXNREV** — Transaction reversal; UPDATE on `ACCOUNT_TXN`. Reverse an eligible posted transaction.
12. **BALENQ** — Balance enquiry; READ on `ACCOUNT`. Calculate available and ledger balances.
13. **FUNDTRF** — Funds transfer; INSERT on `ACCOUNT_TXN`. Transfer funds between eligible accounts.
14. **INTCALC** — Interest calculation; READ on `ACCOUNT`. Calculate accrued interest for an account.
15. **INTPOST** — Interest posting; INSERT on `ACCOUNT_TXN`. Post calculated interest to accounts.
16. **FEEPOST** — Fee posting; INSERT on `ACCOUNT_TXN`. Post service fees.
17. **STMTGEN** — Statement generation; READ on `ACCOUNT_TXN`. Build a customer account statement.
18. **ADDRCHG** — Address change; UPDATE on `CUSTOMER`. Validate and update customer address.
19. **PHNCHG** — Phone change; UPDATE on `CUSTOMER`. Validate and update customer phone number.
20. **EMAILCHG** — Email change; UPDATE on `CUSTOMER`. Validate and update customer email.
21. **BENQRY** — Beneficiary inquiry; READ on `BENEFICIARY`. List registered beneficiaries.
22. **BENADD** — Beneficiary add; INSERT on `BENEFICIARY`. Register a beneficiary.
23. **BENUPD** — Beneficiary update; UPDATE on `BENEFICIARY`. Modify beneficiary details.
24. **LOANINQ** — Loan inquiry; READ on `LOAN`. Retrieve loan account details.
25. **LOANADD** — Loan booking; INSERT on `LOAN`. Create a loan record after approval.
26. **LOANPAY** — Loan payment; INSERT on `LOAN_PAYMENT`. Apply a loan repayment.
27. **LOANCLS** — Loan closure; UPDATE on `LOAN`. Close a fully repaid loan.
28. **CARDINQ** — Card inquiry; READ on `CARD`. Retrieve card status and limits.
29. **CARDISS** — Card issuance; INSERT on `CARD`. Issue a payment card.
30. **CARDSTP** — Card stop; UPDATE on `CARD`. Block a lost or stolen card.
31. **LIMITQ** — Limit inquiry; READ on `ACCOUNT`. Retrieve transaction limits.
32. **LIMITUP** — Limit maintenance; UPDATE on `ACCOUNT`. Change account transaction limits.
33. **BRNQRY** — Branch inquiry; READ on `BRANCH`. Retrieve branch details.
34. **PRODQRY** — Product inquiry; READ on `PRODUCT`. Retrieve banking product details.
35. **RATEQRY** — Rate inquiry; READ on `INTEREST_RATE`. Retrieve effective interest rates.
36. **USERVAL** — User validation; READ on `APP_USER`. Validate application user access.
37. **AUDITW** — Audit writer; INSERT on `AUDIT_LOG`. Write an application audit event.
38. **NOTIFY** — Notification request; INSERT on `NOTIFICATION`. Create a customer notification request.
39. **CHEKCL** — Cheque clearing; UPDATE on `ACCOUNT_TXN`. Process cheque clearing status.
40. **ACHPOST** — ACH posting; INSERT on `ACCOUNT_TXN`. Post ACH debit or credit entries.
41. **NACHRET** — NACH return; INSERT on `ACCOUNT_TXN`. Record a returned NACH item.
42. **ATMPOST** — ATM posting; INSERT on `ACCOUNT_TXN`. Post ATM cash withdrawal activity.
43. **POSPOST** — POS posting; INSERT on `ACCOUNT_TXN`. Post point-of-sale card activity.
44. **RECONQ** — Reconciliation inquiry; READ on `ACCOUNT_TXN`. Retrieve reconciliation exceptions.
45. **DORMANT** — Dormancy review; UPDATE on `ACCOUNT`. Identify and mark dormant accounts.
46. **KYCCHK** — KYC validation; READ on `CUSTOMER`. Check customer KYC completion status.
47. **AMLCHK** — AML screening; READ on `CUSTOMER`. Create a screening request for compliance review.
48. **TAXCERT** — Tax certificate; READ on `ACCOUNT_TXN`. Prepare annual interest and tax certificate data.
49. **BULKUPD** — Bulk account update; UPDATE on `ACCOUNT`. Apply controlled account maintenance requests.
50. **ERRLOG** — Error logger; INSERT on `AUDIT_LOG`. Persist standardized application error details.

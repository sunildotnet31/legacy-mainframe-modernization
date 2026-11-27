# BANKCORE Payment Processing Specification

The payment batch begins in PROGRAM-A. PROGRAM-A calls PROGRAM-B for customer validation. PROGRAM-B reads CUSTOMER_TABLE and invokes PROGRAM-C when the customer is active. PROGRAM-C produces PAYMENT-REPORT.

Business rules: customer status must be ACTIVE; payment amount must be positive; the payment run must execute in the approved batch window.

PROGRAM-D performs account reconciliation and updates ACCOUNT_TABLE. PROGRAM-E reads the customer input feed and invokes PROGRAM-B.

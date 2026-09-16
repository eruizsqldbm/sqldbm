-- ************************************** ERP.GLPCA
CREATE TABLE ERP.GLPCA (
  RCLNT string COMMENT 'Identifies the client for which the data is stored.',
  BELNR string COMMENT 'The financial accounting document number.',
  GJAHR string COMMENT 'The fiscal year for the transaction.',
  BUZEI string COMMENT 'Number of Line Item Within Accounting Document',
  HKONT string COMMENT 'The general ledger account involved in the transaction.',
  DMBTR decimal(10,0) COMMENT 'Amount in Local Currency'
)
COMMENT 'Stores line item data for profit center postings.';
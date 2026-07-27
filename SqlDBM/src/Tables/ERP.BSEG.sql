-- ************************************** ERP.BSEG
CREATE TABLE ERP.BSEG (
  BELNR string NOT NULL COMMENT 'Unique accounting document number that identifies the financial document within a specific company code and fiscal year combination. Forms part of the composite primary key.',
  GJAHR string NOT NULL COMMENT 'Four-digit fiscal year in which the accounting document was posted. Combined with BELNR and BUZEI to uniquely identify each line item.',
  BUZEI string NOT NULL COMMENT 'Sequential line item number within an accounting document, starting from 001. Distinguishes individual postings within the same document.',
  HKONT string COMMENT 'General ledger account number to which the transaction is posted. Represents the chart of accounts mapping for financial statement classification and reporting.',
  DMBTR decimal(10,0) COMMENT 'Monetary transaction amount expressed in the local currency of the company code. Represents the document currency amount converted using the applicable exchange rate at posting time.',
  CONSTRAINT BELNR PRIMARY KEY (BELNR, GJAHR, BUZEI),
  CONSTRAINT FK_114 FOREIGN KEY (BELNR) REFERENCES ERP.BKPF (BELNR)
)
COMMENT 'Stores individual line items for accounting documents in SAP ERP, capturing transaction-level details including general ledger account assignments, amounts, and posting information for financial reporting and analysis.';
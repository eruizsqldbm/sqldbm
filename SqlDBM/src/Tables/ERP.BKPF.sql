-- ************************************** ERP.BKPF
CREATE TABLE ERP.BKPF (
  BELNR string NOT NULL CONSTRAINT PK_BKPF PRIMARY KEY COMMENT 'Unique identifier for the financial document. Assigned automatically by the system within a company code and fiscal year.',
  GJAHR string COMMENT 'Fiscal year to which the document belongs. Helps in organizing documents chronologically and aids in reporting periods.',
  BUKRS string COMMENT 'The company code for which the document is created. Identifies the legal entity responsible for the financial transaction.',
  BLART string COMMENT 'Used to determine the document category, control posting rules, and ensure accurate reporting.',
  BLDAT date COMMENT 'The date entered by the user as the document’s creation date (e.g., invoice date).',
  CONSTRAINT FK_113 FOREIGN KEY (BUKRS) REFERENCES ERP.T_001 (BUKRS)
)
COMMENT 'Table contains the header information for accounting documents, such as document number, fiscal year, and company code.';
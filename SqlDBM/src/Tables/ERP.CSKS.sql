-- ************************************** ERP.CSKS
CREATE TABLE ERP.CSKS (
  KOSTL string NOT NULL CONSTRAINT PK_CSKS PRIMARY KEY COMMENT 'Unique identifier for the cost center within the controlling area.',
  BUKRS string COMMENT 'Represents the company code associated with the cost center. Linked to table T001.',
  KOSAR string COMMENT 'Categorizes the cost center (e.g., administrative, production). Linked to table TKA05.',
  BELNR string NOT NULL COMMENT 'Unique identifier for the financial document. Assigned automatically by the system within a company code and fiscal year.',
  CONSTRAINT FK_115 FOREIGN KEY (BUKRS) REFERENCES ERP.T_001 (BUKRS),
  CONSTRAINT FK_117 FOREIGN KEY (BELNR) REFERENCES ERP.BKPF (BELNR)
)
COMMENT 'Table stores master data for cost centers, which are used in cost tracking and controlling.';
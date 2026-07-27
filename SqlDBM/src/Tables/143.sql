-- ************************************** `143`
CREATE TABLE `143` (
  BELNR string NOT NULL COMMENT 'Unique identifier for the financial document. Assigned automatically by the system within a company code and fiscal year.',
  CONSTRAINT FK_118 FOREIGN KEY (BELNR) REFERENCES ERP.BKPF (BELNR)
)
TBLPROPERTIES (delta.columnMapping.mode = 'name');
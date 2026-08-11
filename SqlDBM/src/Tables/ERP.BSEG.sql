-- ************************************** ERP.BSEG
CREATE TABLE ERP.BSEG (
  BELNR string NOT NULL COMMENT 'Unique identifier for the financial document within a company code and fiscal year.',
  GJAHR string NOT NULL COMMENT 'Indicates the fiscal year in which the document was created.',
  BUZEI string NOT NULL COMMENT 'Sequential number for each line item in the document.',
  HKONT string COMMENT 'Specifies the G/L account impacted by the transaction.',
  DMBTR decimal(10,0) COMMENT 'The transaction amount converted to the local currency of the company code.',
  CONSTRAINT BELNR PRIMARY KEY (BELNR, GJAHR, BUZEI)
)
COMMENT 'Table stores line items for accounting documents, capturing details such as general ledger accounts and amounts.';
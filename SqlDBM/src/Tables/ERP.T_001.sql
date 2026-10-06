-- ************************************** ERP.T_001
CREATE TABLE ERP.T_001 (
  BUKRS string NOT NULL CONSTRAINT PK_T_001 PRIMARY KEY COMMENT 'Company code associated with the valuation area.',
  BUTXT string(30) COMMENT 'Stores company code data'
)
COMMENT 'Table stores information about company codes in SAP, which represent separate legal entities within the system. Company codes are the highest organizational unit in Financial Accounting (FI).';
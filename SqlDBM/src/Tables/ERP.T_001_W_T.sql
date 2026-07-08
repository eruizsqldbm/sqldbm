-- ************************************** ERP.T_001_W_T
CREATE TABLE ERP.T_001_W_T (
  WERKS string NOT NULL CONSTRAINT PK_T_001_W PRIMARY KEY COMMENT 'Plant Code',
  NAME_1 string(40) COMMENT 'Plant Name',
  BUKRS string COMMENT 'Company Code'
)
COMMENT 'Table contains plant-related information within a company code. A plant is a location where materials are produced or goods are stored.';
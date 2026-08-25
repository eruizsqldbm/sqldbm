-- ************************************** ERP.T_001_W
CREATE TABLE ERP.T_001_W (
  WERKS string NOT NULL CONSTRAINT PK_T_001_W PRIMARY KEY COMMENT 'Plant Code',
  NAME_1 string(40) COMMENT 'Plant Name',
  BUKRS string COMMENT 'Company Code',
  CONSTRAINT FK_95 FOREIGN KEY (BUKRS) REFERENCES ERP.T_001 (BUKRS)
)
COMMENT 'Table contains plant-related information within a company code. A plant is a location where materials are produced or goods are stored.';
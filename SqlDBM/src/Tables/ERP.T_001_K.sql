-- ************************************** ERP.T_001_K
CREATE TABLE ERP.T_001_K (
  BWKEY string NOT NULL CONSTRAINT BUKRS PRIMARY KEY COMMENT 'Controlling Area'
)
COMMENT 'Table is used to assign company codes to controlling areas. A controlling area is an organizational unit in SAP used for managing costs and internal accounting.';
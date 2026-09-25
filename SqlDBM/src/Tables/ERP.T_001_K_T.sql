-- ************************************** ERP.T_001_K_T
CREATE TABLE ERP.T_001_K_T (
  BWKEY string NOT NULL CONSTRAINT BUKRS PRIMARY KEY COMMENT 'Controlling Area'
)
COMMENT 'Table is used to assign company codes to controlling areas. A controlling area is an organizational unit in SAP used for managing costs and internal accounting.';
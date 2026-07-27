-- ************************************** ERP.MARC
CREATE TABLE ERP.MARC (
  MATNR string NOT NULL COMMENT 'Unique identifier for the material; links to the MARA table for general material data.',
  WERKS string NOT NULL COMMENT 'Code representing the plant where the material is managed; links to the T001W table.',
  DISMM string COMMENT 'Defines the MRP procedure for the material; links to the T438A table.',
  BWKEY string NOT NULL COMMENT 'Controlling Area',
  CONSTRAINT MATNR PRIMARY KEY (MATNR, WERKS),
  CONSTRAINT FK_103 FOREIGN KEY (MATNR) REFERENCES ERP.MARA (MATNR),
  CONSTRAINT FK_116 FOREIGN KEY (BWKEY) REFERENCES ERP.T_001_K (BWKEY)
)
COMMENT 'Table stores material-specific data for each plant, such as plant-specific settings for inventory management, procurement, and MRP.';
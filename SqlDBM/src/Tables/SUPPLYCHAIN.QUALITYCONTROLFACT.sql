-- ************************************** SUPPLYCHAIN.QUALITYCONTROLFACT
CREATE TABLE SUPPLYCHAIN.QUALITYCONTROLFACT (
  QCID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''QCID'' column contains data related to ''qcid''. This column likely represents an identifier.',
  PRODUCTKEY decimal(10,0) COMMENT 'The ''ProductKey'' column contains data related to ''productkey''.',
  SUPPLIERKEY decimal(10,0) COMMENT 'The ''SupplierKey'' column contains data related to ''supplierkey''.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  QUANTITYCHECKED decimal(10,0) COMMENT 'The ''QuantityChecked'' column contains data related to ''quantitychecked''.',
  QUANTITYREJECTED decimal(10,0) COMMENT 'The ''QuantityRejected'' column contains data related to ''quantityrejected''.',
  QCNOTES string(500) COMMENT 'The ''QCNotes'' column contains data related to ''qcnotes''.'
);
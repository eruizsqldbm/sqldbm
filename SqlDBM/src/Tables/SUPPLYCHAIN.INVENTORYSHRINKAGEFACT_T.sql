-- ************************************** SUPPLYCHAIN.INVENTORYSHRINKAGEFACT_T
CREATE TABLE SUPPLYCHAIN.INVENTORYSHRINKAGEFACT_T (
  SHRINKAGEID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''ShrinkageID'' column contains data related to ''shrinkageid''. This column likely represents an identifier.',
  PRODUCTKEY decimal(10,0) COMMENT 'The ''ProductKey'' column contains data related to ''productkey''.',
  WAREHOUSEKEY decimal(10,0) COMMENT 'The ''WarehouseKey'' column contains data related to ''warehousekey''.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  SHRINKAGEQUANTITY decimal(10,0) COMMENT 'The ''ShrinkageQuantity'' column contains data related to ''shrinkagequantity''.',
  SHRINKAGEREASON string(255) COMMENT 'The ''ShrinkageReason'' column contains data related to ''shrinkagereason''.'
);
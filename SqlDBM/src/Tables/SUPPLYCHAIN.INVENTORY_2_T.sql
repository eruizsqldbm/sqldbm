-- ************************************** SUPPLYCHAIN.INVENTORY_2_T
CREATE TABLE SUPPLYCHAIN.INVENTORY_2_T (
  INVENTORYID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''InventoryID'' column contains data related to ''inventoryid''. This column likely represents an identifier.',
  QUANTITY decimal(10,0) NOT NULL COMMENT 'The ''Quantity'' column contains data related to ''quantity''.',
  LASTUPDATED date DEFAULT CURRENT_DATE() COMMENT 'The ''LastUpdated'' column contains data related to ''lastupdated''. This column stores information related to dates or times.',
  PRODUCTID decimal(10,0) NOT NULL,
  WAREHOUSEID decimal(10,0) NOT NULL
);
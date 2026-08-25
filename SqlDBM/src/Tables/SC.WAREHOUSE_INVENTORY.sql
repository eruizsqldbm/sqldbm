-- ************************************** SC.WAREHOUSE_INVENTORY
CREATE TABLE SC.WAREHOUSE_INVENTORY (
  WAREHOUSE_INVENTORY_ID decimal(10,0) NOT NULL CONSTRAINT PK_WAREHOUSE_INVENTORY PRIMARY KEY COMMENT 'Unique identifier for each warehouse inventory record.',
  WAREHOUSE_ID string COMMENT 'References the warehouse storing the material.',
  MATERIAL_ID string COMMENT 'References the material stored in the warehouse.',
  QUANTITY_ON_HAND decimal(10,0) COMMENT 'The quantity of the material currently available in the warehouse.',
  LAST_UPDATED_DATE date COMMENT 'The last date when the inventory record was updated.',
  CONSTRAINT MATERIAL_ID FOREIGN KEY (MATERIAL_ID) REFERENCES SC.MATERIAL (MATERIAL_ID),
  CONSTRAINT WAREHOUSE_ID FOREIGN KEY (WAREHOUSE_ID) REFERENCES SC.WAREHOUSE (WAREHOUSE_ID)
)
COMMENT 'Tracks material quantities stored in warehouses.';
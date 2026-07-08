-- ************************************** INVENTORY_DIMENSION_T
CREATE TABLE INVENTORY_DIMENSION_T (
  INVENTORY_ID decimal(10,0) NOT NULL CONSTRAINT PK_INVENTORY_DIMENSION PRIMARY KEY COMMENT 'Unique identifier for each inventory record.',
  MATERIAL_ID string COMMENT 'References the material stored in the inventory.',
  PLANT_ID string COMMENT 'References the plant where the inventory is located.',
  QUANTITY_ON_HAND decimal(10,0) COMMENT 'The quantity of the material currently available at the plant.',
  LAST_UPDATED date COMMENT 'The last date when the inventory record was updated.',
  CONSTRAINT FK_PLANT_ID FOREIGN KEY (PLANT_ID) REFERENCES SC.PLANT_T (PLANT_ID),
  CONSTRAINT FK_MATERIAL_ID FOREIGN KEY (MATERIAL_ID) REFERENCES SC.MATERIAL_T (MATERIAL_ID)
)
COMMENT 'Dimension table for inventory details, capturing material availability and updates by plant.';
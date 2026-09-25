-- ************************************** SC.INVENTORY_1_T
CREATE TABLE SC.INVENTORY_1_T (
  INVENTORY_ID decimal(10,0) NOT NULL CONSTRAINT PK_INVENTORY PRIMARY KEY COMMENT 'Unique identifier for each inventory record.',
  QUANTITY_ON_HAND decimal(10,0) COMMENT 'The quantity of the material currently available at the plant.',
  LAST_UPDATED_DATE date COMMENT 'The last date when the inventory record was updated.'
)
COMMENT 'Tracks the quantity of materials available at specific plants.';
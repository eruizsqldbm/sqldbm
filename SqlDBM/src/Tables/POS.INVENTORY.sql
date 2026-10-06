-- ************************************** POS.INVENTORY
CREATE TABLE POS.INVENTORY (
  INVENTORY_ID decimal(10,0) NOT NULL CONSTRAINT PK_INVENTORY PRIMARY KEY COMMENT 'A unique identifier for each inventory record.',
  LOCATION_ID decimal(10,0) COMMENT 'The location of the inventory, linked to the Location table.',
  PRODUCT_NAME string COMMENT 'The name of the product.',
  QUANTITY_ON_HAND decimal(10,0) COMMENT 'The number of items available in stock.',
  UNIT string COMMENT 'The unit of measurement (e.g., "pieces", "cases").',
  LAST_UPDATED_DATE date COMMENT 'The date when the inventory was last updated.',
  CONSTRAINT LOCATION_ID FOREIGN KEY (LOCATION_ID) REFERENCES POS.LOCATION (LOCATION_ID)
)
COMMENT 'Table tracks the stock of products at each location, including quantities and units of measure.';
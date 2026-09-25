-- ************************************** SUPPLYCHAIN.INVENTORYSHRINKAGEFACT_T
CREATE TABLE SUPPLYCHAIN.INVENTORYSHRINKAGEFACT_T (
  SHRINKAGEID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'Unique identifier for each shrinkage event record.',
  PRODUCTKEY decimal(10,0) COMMENT 'Foreign key linking to the product dimension; identifies which product experienced shrinkage.',
  WAREHOUSEKEY decimal(10,0) COMMENT 'Foreign key linking to the warehouse dimension; identifies the location where shrinkage occurred.',
  DATEKEY date COMMENT 'Date when the shrinkage was recorded or observed.',
  SHRINKAGEQUANTITY decimal(10,0) COMMENT 'The quantity of inventory lost due to shrinkage, measured in units.',
  SHRINKAGEREASON string(255) COMMENT 'Categorized reason for the inventory shrinkage, such as theft, damage, obsolescence, or administrative error.'
)
COMMENT 'Fact table tracking inventory shrinkage events across the supply chain, including quantities lost and reasons for shrinkage by product, warehouse, and date.';
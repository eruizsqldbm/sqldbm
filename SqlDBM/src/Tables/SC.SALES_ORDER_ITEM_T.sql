-- ************************************** SC.SALES_ORDER_ITEM_T
CREATE TABLE SC.SALES_ORDER_ITEM_T (
  SALES_ORDER_ITEM_ID decimal(10,0) NOT NULL CONSTRAINT PK_SALES_ORDER_ITEM PRIMARY KEY COMMENT 'Unique identifier for each sales order item.',
  SALES_ORDER_ID string COMMENT 'References the sales order to which this item belongs.',
  MATERIAL_ID string COMMENT 'References the material being sold in this item.',
  QUANTITY decimal(10,0) COMMENT 'The quantity of the material ordered.',
  UNIT_PRICE decimal(10,0) COMMENT 'The price per unit of the material.',
  CONSTRAINT MATERIAL_ID FOREIGN KEY (MATERIAL_ID) REFERENCES SC.MATERIAL_T (MATERIAL_ID),
  CONSTRAINT SALES_ORDER_ID FOREIGN KEY (SALES_ORDER_ID) REFERENCES SC.SALES_ORDER_T (SALES_ORDER_ID)
)
COMMENT 'Tracks individual items within sales orders, including materials, quantities, and pricing.';
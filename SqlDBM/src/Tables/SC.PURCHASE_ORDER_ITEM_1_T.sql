-- ************************************** SC.PURCHASE_ORDER_ITEM_1_T
CREATE TABLE SC.PURCHASE_ORDER_ITEM_1_T (
  PURCHASE_ORDER_ITEM_ID decimal(10,0) NOT NULL CONSTRAINT PK_PURCHASE_ORDER_ITEM PRIMARY KEY COMMENT 'Unique identifier for each purchase order item.',
  PURCHASE_ORDER_ID string COMMENT 'References the purchase order to which this item belongs.',
  MATERIAL_ID string COMMENT 'References the material being purchased in this item.',
  QUANTITY decimal(10,0) COMMENT 'The quantity of the material ordered.',
  UNIT_PRICE decimal(10,0) COMMENT 'The price per unit of the material.',
  CONSTRAINT MATERIAL_ID FOREIGN KEY (MATERIAL_ID) REFERENCES SC.MATERIAL_T (MATERIAL_ID),
  CONSTRAINT PURCHASE_ORDER_ID FOREIGN KEY (PURCHASE_ORDER_ID) REFERENCES SC.PURCHASE_ORDER_1_T (PURCHASE_ORDER_ID)
)
COMMENT 'Tracks individual items within purchase orders, including materials, quantities, and pricing.';
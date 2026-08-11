-- ************************************** SC.PURCHASE_ORDER_ITEM_1
CREATE TABLE SC.PURCHASE_ORDER_ITEM_1 (
  PURCHASE_ORDER_ITEM_ID decimal(10,0) NOT NULL CONSTRAINT PK_PURCHASE_ORDER_ITEM PRIMARY KEY COMMENT 'Unique identifier for each purchase order item.',
  PURCHASE_ORDER_ID string COMMENT 'References the purchase order to which this item belongs.',
  MATERIAL_ID string COMMENT 'References the material being purchased in this item.',
  QUANTITY decimal(10,0) COMMENT 'The quantity of the material ordered.',
  UNIT_PRICE decimal(10,0) COMMENT 'The price per unit of the material.',
  PURCHASE_ORDER_ID_1 decimal(10,0) NOT NULL COMMENT 'A unique identifier for each purchase order.',
  CONSTRAINT PURCHASE_ORDER_ID FOREIGN KEY (PURCHASE_ORDER_ID) REFERENCES SC.PURCHASE_ORDER_1 (PURCHASE_ORDER_ID),
  CONSTRAINT FK_138 FOREIGN KEY (MATERIAL_ID) REFERENCES SC.MATERIAL (MATERIAL_ID),
  CONSTRAINT FK_137 FOREIGN KEY (PURCHASE_ORDER_ID_1) REFERENCES POS.PURCHASE_ORDER (PURCHASE_ORDER_ID)
)
COMMENT 'Tracks individual items within purchase orders, including materials, quantities, and pricing.';
-- ************************************** POS.PURCHASE_ORDER_ITEM
CREATE TABLE POS.PURCHASE_ORDER_ITEM (
  PURCHASE_ORDER_ITEM_ID decimal(10,0) NOT NULL CONSTRAINT PK_PURCHASE_ORDER_ITEM PRIMARY KEY COMMENT 'A unique identifier for each purchase order item.',
  PURCHASE_ORDER_ID decimal(10,0) COMMENT 'The purchase order to which the item belongs, linked to the PurchaseOrder table.',
  PRODUCT_NAME string COMMENT 'The name of the product purchased.',
  QUANTITY decimal(10,0) COMMENT 'The quantity of the product ordered.',
  UNIT_PRICE decimal(10, 2) COMMENT 'The price per unit of the product.',
  CONSTRAINT FK_136 FOREIGN KEY (PURCHASE_ORDER_ID) REFERENCES POS.PURCHASE_ORDER (PURCHASE_ORDER_ID),
  CONSTRAINT PURCHASE_ORDER_ID FOREIGN KEY (PURCHASE_ORDER_ID) REFERENCES POS.PURCHASE_ORDER (PURCHASE_ORDER_ID)
)
COMMENT 'Table stores individual items included in a purchase order.';
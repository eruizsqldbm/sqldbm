-- ************************************** POS.ORDER_ITEM
CREATE TABLE POS.ORDER_ITEM (
  ORDER_ITEM_ID decimal(10,0) NOT NULL CONSTRAINT PK_ORDER_ITEM PRIMARY KEY COMMENT 'A unique identifier for each order item',
  ORDER_ID decimal(10,0) COMMENT 'The order to which the item belongs, linked to the Order table.',
  MENU_ITEM_ID decimal(10,0) COMMENT 'The menu item ordered, linked to the MenuItem table.',
  QUANTITY decimal(10,0) NOT NULL COMMENT 'The quantity of the menu item ordered.',
  UNIT_PRICE decimal(10, 2) NOT NULL COMMENT 'The price per unit of the menu item.',
  CONSTRAINT FK_133 FOREIGN KEY (MENU_ITEM_ID) REFERENCES POS.MENU_ITEM (MENU_ITEM_ID),
  CONSTRAINT ORDER_ID FOREIGN KEY (ORDER_ID) REFERENCES POS.`ORDER` (ORDER_ID),
  CONSTRAINT FK_132 FOREIGN KEY (ORDER_ID) REFERENCES POS.`ORDER` (ORDER_ID),
  CONSTRAINT MENU_ITEM_ID FOREIGN KEY (MENU_ITEM_ID) REFERENCES POS.MENU_ITEM (MENU_ITEM_ID)
)
COMMENT 'Table stores the details of individual items within an order.';
-- ************************************** POS.ORDER_ITEM_T
CREATE TABLE POS.ORDER_ITEM_T (
  ORDER_ITEM_ID decimal(10,0) NOT NULL CONSTRAINT PK_ORDER_ITEM PRIMARY KEY COMMENT 'A unique identifier for each order item',
  ORDER_ID decimal(10,0) COMMENT 'The order to which the item belongs, linked to the Order table.',
  MENU_ITEM_ID decimal(10,0) COMMENT 'The menu item ordered, linked to the MenuItem table.',
  QUANTITY decimal(10,0) NOT NULL COMMENT 'The quantity of the menu item ordered.',
  UNIT_PRICE decimal(10, 2) NOT NULL COMMENT 'The price per unit of the menu item.',
  CONSTRAINT MENU_ITEM_ID FOREIGN KEY (MENU_ITEM_ID) REFERENCES POS.MENU_ITEM_T (MENU_ITEM_ID),
  CONSTRAINT ORDER_ID FOREIGN KEY (ORDER_ID) REFERENCES POS.ORDER_T (ORDER_ID)
)
COMMENT 'Table stores the details of individual items within an order.';
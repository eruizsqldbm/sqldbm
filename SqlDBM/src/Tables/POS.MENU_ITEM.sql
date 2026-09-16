-- ************************************** POS.MENU_ITEM
CREATE TABLE POS.MENU_ITEM (
  MENU_ITEM_ID decimal(10,0) NOT NULL CONSTRAINT PK_MENU_ITEM PRIMARY KEY COMMENT 'A unique identifier for each menu item.',
  MENU_ID decimal(10,0) COMMENT 'The menu that the item belongs to, linked to the Menu table.',
  NAME string NOT NULL COMMENT 'The name of the menu item.',
  DESCRIPTION string COMMENT 'A description of the menu item.',
  PRICE decimal(10, 2) NOT NULL COMMENT 'The price of the menu item.',
  IS_AVAILABLE string COMMENT 'A flag indicating if the item is currently available (''Y'' or ''N'').',
  CREATED_DATE date COMMENT 'The date when the menu item was added.',
  CONSTRAINT MENU_ID FOREIGN KEY (MENU_ID) REFERENCES POS.MENU (MENU_ID)
)
COMMENT 'Table stores individual items available in a menu.';
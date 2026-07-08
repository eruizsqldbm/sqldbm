-- ************************************** POS.MENU_ITEM_CATEGORY_T
CREATE TABLE POS.MENU_ITEM_CATEGORY_T (
  MENU_ITEM_ID decimal(10,0) NOT NULL COMMENT 'The ID of the menu item, linked to the MenuItem table.',
  CATEGORY_ID decimal(10,0) NOT NULL COMMENT 'The ID of the category to which the menu item belongs, linked to the Category table.',
  CONSTRAINT MENU_ITEM_ID PRIMARY KEY (MENU_ITEM_ID, CATEGORY_ID),
  CONSTRAINT CATEGORY_ID FOREIGN KEY (CATEGORY_ID) REFERENCES POS.CATEGORY_T (CATEGORY_ID),
  CONSTRAINT MENU_ITEM_ID_1 FOREIGN KEY (MENU_ITEM_ID) REFERENCES POS.MENU_ITEM_T (MENU_ITEM_ID)
)
COMMENT 'Table associates menu items with categories.';
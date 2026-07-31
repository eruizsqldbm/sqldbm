-- ************************************** POS.MENU
CREATE TABLE POS.MENU (
  MENU_ID decimal(10,0) NOT NULL CONSTRAINT PK_MENU PRIMARY KEY COMMENT 'A unique identifier for each menu.',
  LOCATION_ID decimal(10,0) COMMENT 'The location that the menu is associated with, linked to the Location table.',
  NAME string NOT NULL COMMENT 'The name of the menu (e.g., "Dinner Menu").',
  DESCRIPTION string COMMENT 'A description of the menu.',
  CREATED_DATE date COMMENT 'The date when the menu was created.',
  CONSTRAINT LOCATION_ID FOREIGN KEY (LOCATION_ID) REFERENCES POS.LOCATION (LOCATION_ID),
  CONSTRAINT FK_83 FOREIGN KEY (LOCATION_ID) REFERENCES POS.LOCATION (LOCATION_ID)
)
COMMENT 'Table stores information about menus available at each location, including menu names and descriptions.';
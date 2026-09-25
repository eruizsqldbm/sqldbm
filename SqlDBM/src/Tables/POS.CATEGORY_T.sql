-- ************************************** POS.CATEGORY_T
CREATE TABLE POS.CATEGORY_T (
  CATEGORY_ID decimal(10,0) NOT NULL CONSTRAINT PK_CATEGORY PRIMARY KEY COMMENT 'A unique identifier for each category.',
  NAME string NOT NULL COMMENT 'The name of the category (e.g., "Appetizers", "Entrees").',
  DESCRIPTION string COMMENT 'A description of the category.',
  CREATED_DATE date COMMENT 'The date when the category was created.'
)
COMMENT 'Table stores the categories for menu items, helping organize products by type (e.g., appetizers, main courses, desserts).';
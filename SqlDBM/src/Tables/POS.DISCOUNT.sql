-- ************************************** POS.DISCOUNT
CREATE TABLE POS.DISCOUNT (
  DISCOUNT_ID decimal(10,0) NOT NULL CONSTRAINT PK_DISCOUNT PRIMARY KEY COMMENT 'Unique identifier for each discount.',
  NAME string COMMENT 'The name of the discount.',
  DISCOUNT_TYPE string COMMENT 'Type of the discount (e.g., "percentage", "fixed amount").',
  AMOUNT decimal(10, 2) COMMENT 'The value of the discount.',
  IS_ACTIVE string COMMENT 'Indicates whether the discount is active (''Y'' or ''N'').',
  CREATED_DATE date COMMENT 'The date the discount was created.'
)
COMMENT 'Table stores information about discount schemes that can be applied to orders or items, such as promotional discounts or loyalty program discounts.';
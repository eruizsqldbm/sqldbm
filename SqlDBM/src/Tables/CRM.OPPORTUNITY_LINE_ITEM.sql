-- ************************************** CRM.OPPORTUNITY_LINE_ITEM
CREATE TABLE CRM.OPPORTUNITY_LINE_ITEM (
  LINE_ITEM_ID string NOT NULL CONSTRAINT PK_OPPORTUNITY_LINE_ITEM PRIMARY KEY COMMENT 'Unique identifier for each line item in an opportunity, serving as the primary key.',
  OPPORTUNITY_ID string COMMENT 'References the opportunity associated with the line item.',
  PRODUCT_ID string COMMENT 'References the product associated with the line item.',
  QUANTITY decimal(10,0) COMMENT 'Specifies the quantity of the product included in the line item.',
  UNIT_PRICE decimal(10,0) COMMENT 'Specifies the price per unit of the product.',
  CREATED_DATE date COMMENT 'The date when the line item record was created.',
  CONSTRAINT PRODUCT_ID FOREIGN KEY (PRODUCT_ID) REFERENCES CRM.PRODUCT (PRODUCT_ID),
  CONSTRAINT OPPORTUNITY_ID FOREIGN KEY (OPPORTUNITY_ID) REFERENCES CRM.OPPORTUNITY (OPPORTUNITY_ID),
  CONSTRAINT FK_90 FOREIGN KEY (OPPORTUNITY_ID) REFERENCES CRM.OPPORTUNITY (OPPORTUNITY_ID),
  CONSTRAINT FK_91 FOREIGN KEY (PRODUCT_ID) REFERENCES CRM.PRODUCT (PRODUCT_ID)
)
COMMENT 'Stores product-level details for opportunities, including quantity, pricing, and related products.';
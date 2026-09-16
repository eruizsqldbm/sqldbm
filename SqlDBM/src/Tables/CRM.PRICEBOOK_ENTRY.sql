-- ************************************** CRM.PRICEBOOK_ENTRY
CREATE TABLE CRM.PRICEBOOK_ENTRY (
  ENTRY_ID string NOT NULL CONSTRAINT PK_PRICEBOOK_ENTRY PRIMARY KEY COMMENT 'Unique identifier for each pricebook entry, serving as the primary key.',
  PRICEBOOK_ID string COMMENT 'References the pricebook in which this product-price association is defined.',
  PRODUCT_ID string COMMENT 'References the product associated with this pricebook entry.',
  UNIT_PRICE decimal(10,0) COMMENT 'Specifies the price of one unit of the product in the context of this pricebook.',
  IS_ACTIVE boolean COMMENT 'Indicates whether the pricebook entry is active and available for use in transactions.',
  CREATED_DATE date COMMENT 'The date when the pricebook entry was created in the CRM.',
  CONSTRAINT PRICEBOOK_ID FOREIGN KEY (PRICEBOOK_ID) REFERENCES CRM.PRICEBOOK (PRICEBOOK_ID),
  CONSTRAINT PRODUCT_ID FOREIGN KEY (PRODUCT_ID) REFERENCES CRM.PRODUCT (PRODUCT_ID)
)
COMMENT 'Connects products to specific pricebooks, defining pricing for various sales and marketing contexts.';
-- ************************************** CRM.PRODUCT
CREATE TABLE CRM.PRODUCT (
  PRODUCT_ID string NOT NULL CONSTRAINT PK_PRODUCT PRIMARY KEY COMMENT 'Unique identifier for each product, serving as the primary key.',
  NAME string(80) NOT NULL COMMENT 'The name of the product (e.g., Premium Subscription or Wireless Headphones).',
  PRODUCT_CODE string(40) COMMENT 'A unique code used to identify the product in inventory or sales records.',
  DESCRIPTION string COMMENT 'Optional details about the product, such as features, specifications, or benefits.',
  IS_ACTIVE boolean COMMENT 'Indicates whether the product is currently available for sales or use in CRM processes.',
  CREATED_DATE date COMMENT 'The date when the product record was added to the CRM.'
)
COMMENT 'Stores information about products or services offered by the organization, forming the foundation for pricing and sales management.';
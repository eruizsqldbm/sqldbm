-- ************************************** POS.SUPPLIER_T
CREATE TABLE POS.SUPPLIER_T (
  SUPPLIER_ID decimal(10,0) NOT NULL CONSTRAINT PK_SUPPLIER PRIMARY KEY COMMENT 'A unique identifier for each supplier',
  NAME string COMMENT 'The name of the supplier.',
  CONTACT_NAME string COMMENT 'The name of the supplier''s primary contact.',
  PHONE string COMMENT 'The phone number of the supplier.',
  ADDRESS string COMMENT 'The physical address of the supplier.'
)
COMMENT 'Table stores information about suppliers who provide products or services to the business. Each supplier is uniquely identified by the SupplierId.';
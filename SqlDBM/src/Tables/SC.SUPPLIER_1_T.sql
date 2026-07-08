-- ************************************** SC.SUPPLIER_1_T
CREATE TABLE SC.SUPPLIER_1_T (
  SUPPLIER_ID string NOT NULL CONSTRAINT PK_SUPPLIER PRIMARY KEY COMMENT 'Unique identifier for each supplier.',
  SUPPLIER_NAME string(100) COMMENT 'The name of the supplier organization.',
  CONTACT_NAME string(100) COMMENT 'The name of the primary contact person for the supplier.',
  PHONE string COMMENT 'The contact phone number for the supplier.',
  COUNTRY string COMMENT 'The country code where the supplier is based.',
  CREATED_DATE date COMMENT 'The date when the supplier record was created.'
)
COMMENT 'Contains information about suppliers who provide materials or goods.';
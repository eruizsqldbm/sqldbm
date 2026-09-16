-- ************************************** SUPPLYCHAIN.SUPPLIER_2
CREATE TABLE SUPPLYCHAIN.SUPPLIER_2 (
  SUPPLIERID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''SupplierID'' column contains data related to ''supplierid''. This column likely represents an identifier.',
  SUPPLIERNAME string(255) NOT NULL COMMENT 'The ''SupplierName'' column contains data related to ''suppliername''. This column holds name-related data.',
  CONTACTNAME string(255) COMMENT 'The ''ContactName'' column contains data related to ''contactname''. This column holds name-related data.',
  CONTACTTITLE string(255) COMMENT 'The ''ContactTitle'' column contains data related to ''contacttitle''.',
  ADDRESS string(255) COMMENT 'The ''Address'' column contains data related to ''address''.',
  CITY string(100) COMMENT 'The ''City'' column contains data related to ''city''.',
  STATE string(100) COMMENT 'The ''State'' column contains data related to ''state''.',
  ZIPCODE string(20) COMMENT 'The ''ZipCode'' column contains data related to ''zipcode''.',
  COUNTRY string(100) COMMENT 'The ''Country'' column contains data related to ''country''.',
  PHONE string(20) COMMENT 'The ''Phone'' column contains data related to ''phone''.',
  EMAIL string(100) COMMENT 'The ''Email'' column contains data related to ''email''.',
  WEBSITE string(100) COMMENT 'The ''Website'' column contains data related to ''website''.'
);
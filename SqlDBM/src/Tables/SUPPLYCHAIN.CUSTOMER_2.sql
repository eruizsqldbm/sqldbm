-- ************************************** SUPPLYCHAIN.CUSTOMER_2
CREATE TABLE SUPPLYCHAIN.CUSTOMER_2 (
  CUSTOMERID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''CustomerID'' column contains data related to ''customerid''. This column likely represents an identifier.',
  CUSTOMERNAME string(255) NOT NULL COMMENT 'The ''CustomerName'' column contains data related to ''customername''. This column holds name-related data.',
  CONTACTNAME string(255) COMMENT 'The ''ContactName'' column contains data related to ''contactname''. This column holds name-related data.',
  CONTACTTITLE string(255) COMMENT 'The ''ContactTitle'' column contains data related to ''contacttitle''.',
  ADDRESS string(255) COMMENT 'The ''Address'' column contains data related to ''address''.',
  CITY string(100) COMMENT 'The ''City'' column contains data related to ''city''.',
  STATE string(100) COMMENT 'The ''State'' column contains data related to ''state''.',
  ZIPCODE string(20) COMMENT 'The ''ZipCode'' column contains data related to ''zipcode''.',
  COUNTRY string(100) COMMENT 'The ''Country'' column contains data related to ''country''.',
  PHONE string(20) COMMENT 'The ''Phone'' column contains data related to ''phone''.',
  EMAIL string(100) COMMENT 'The ''Email'' column contains data related to ''email''.',
  CUSTOMERTYPE string(100) COMMENT 'The ''CustomerType'' column contains data related to ''customertype''.'
);
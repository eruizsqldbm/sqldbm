-- ************************************** SUPPLYCHAIN.PRODUCT_1
CREATE TABLE SUPPLYCHAIN.PRODUCT_1 (
  PRODUCTID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''ProductID'' column contains data related to ''productid''. This column likely represents an identifier.',
  SUPPLIERID decimal(10,0) NOT NULL COMMENT 'The ''SupplierID'' column contains data related to ''supplierid''. This column likely represents an identifier.',
  PRODUCTNAME string(255) NOT NULL COMMENT 'The ''ProductName'' column contains data related to ''productname''. This column holds name-related data.',
  CATEGORY string(100) COMMENT 'The ''Category'' column contains data related to ''category''.',
  UNITPRICE decimal(10,2) COMMENT 'The ''UnitPrice'' column contains data related to ''unitprice''. This column represents a numeric value, likely related to amounts or prices.',
  UNITSINSTOCK decimal(10,0) COMMENT 'The ''UnitsInStock'' column contains data related to ''unitsinstock''.',
  UNITSONORDER decimal(10,0) COMMENT 'The ''UnitsOnOrder'' column contains data related to ''unitsonorder''.',
  REORDERLEVEL decimal(10,0) COMMENT 'The ''ReorderLevel'' column contains data related to ''reorderlevel''.',
  DISCONTINUED boolean DEFAULT FALSE COMMENT 'The ''Discontinued'' column contains data related to ''discontinued''.',
  PRODUCT_ID string NOT NULL COMMENT 'Unique identifier for each product, serving as the primary key.',
  SUPPLIER_ID decimal(10,0) NOT NULL COMMENT 'A unique identifier for each supplier',
  CONSTRAINT FK_127 FOREIGN KEY (SUPPLIER_ID) REFERENCES POS.SUPPLIER (SUPPLIER_ID),
  CONSTRAINT FK_126 FOREIGN KEY (PRODUCT_ID) REFERENCES CRM.PRODUCT (PRODUCT_ID),
  CONSTRAINT FK_12 FOREIGN KEY (SUPPLIERID) REFERENCES SUPPLYCHAIN.SUPPLIER_2 (SUPPLIERID)
);
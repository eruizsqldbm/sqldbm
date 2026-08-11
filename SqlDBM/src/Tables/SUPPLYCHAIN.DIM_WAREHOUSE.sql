-- ************************************** SUPPLYCHAIN.DIM_WAREHOUSE
CREATE TABLE SUPPLYCHAIN.DIM_WAREHOUSE (
  WAREHOUSEID decimal(10,0) NOT NULL COMMENT 'The ''WarehouseID'' column contains data related to ''warehouseid''. This column likely represents an identifier.',
  FROM_DTS timestamp NOT NULL,
  TO_DTS timestamp NOT NULL,
  WAREHOUSENAME string(255) NOT NULL COMMENT 'The ''WarehouseName'' column contains data related to ''warehousename''. This column holds name-related data.',
  ADDRESS string(255) COMMENT 'The ''Address'' column contains data related to ''address''.',
  CITY string(100) COMMENT 'The ''City'' column contains data related to ''city''.',
  STATE string(100) COMMENT 'The ''State'' column contains data related to ''state''.',
  ZIPCODE string(20) COMMENT 'The ''ZipCode'' column contains data related to ''zipcode''.',
  COUNTRY string(100) COMMENT 'The ''Country'' column contains data related to ''country''.',
  MANAGERNAME string(255) COMMENT 'The ''ManagerName'' column contains data related to ''managername''. This column holds name-related data.',
  CAPACITY decimal(10,0) COMMENT 'The ''Capacity'' column contains data related to ''capacity''.',
  LOAD_DTS timestamp NOT NULL,
  CONSTRAINT PK_1 PRIMARY KEY (FROM_DTS, WAREHOUSEID)
);
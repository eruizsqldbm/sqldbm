-- ************************************** SC.WAREHOUSE_T
CREATE TABLE SC.WAREHOUSE_T (
  WAREHOUSE_ID string NOT NULL CONSTRAINT PK_WAREHOUSE PRIMARY KEY COMMENT 'Unique identifier for each warehouse.',
  WAREHOUSE_NAME string(100) COMMENT 'The name of the warehouse.',
  LOCATION string(100) COMMENT 'The physical location of the warehouse.',
  CAPACITY decimal(10,0) COMMENT 'The maximum storage capacity of the warehouse, typically measured in units.',
  CREATED_DATE date COMMENT 'The date when the warehouse record was created.'
)
COMMENT 'Stores details about warehouses used for storing inventory.';
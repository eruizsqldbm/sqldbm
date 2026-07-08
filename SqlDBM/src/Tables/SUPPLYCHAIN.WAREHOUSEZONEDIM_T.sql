-- ************************************** SUPPLYCHAIN.WAREHOUSEZONEDIM_T
CREATE TABLE SUPPLYCHAIN.WAREHOUSEZONEDIM_T (
  ZONEKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''ZoneKey'' column contains data related to ''zonekey''.',
  WAREHOUSEKEY1 decimal(10,0) COMMENT 'The ''WarehouseKey'' column contains data related to ''warehousekey''.',
  ZONENAME string(100) COMMENT 'The ''ZoneName'' column contains data related to ''zonename''. This column holds name-related data.',
  ZONEFUNCTION string(100) COMMENT 'The ''ZoneFunction'' column contains data related to ''zonefunction''.'
)
COMMENT 'Dimension table containing warehouse zone information, including zone identifiers, names, functions, and their relationship to warehouses.';
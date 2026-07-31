-- ************************************** SUPPLYCHAIN.WAREHOUSEOPERATIONSFACT
CREATE TABLE SUPPLYCHAIN.WAREHOUSEOPERATIONSFACT (
  WAREHOUSEOPERATIONID decimal(10,0) NOT NULL CONSTRAINT PK_WAREHOUSEOPERATIONSFACT PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The unique identifier for warehouse operation.',
  WAREHOUSEKEY decimal(10,0) COMMENT 'References the warehouse in the WarehouseDim table.',
  ZONEKEY decimal(10,0) COMMENT 'References the zone in the WarehouseZoneDim table.',
  VEHICLEKEY decimal(10,0) COMMENT 'References the vehicle in the TransportVehicleDim table.',
  DATEKEY date COMMENT 'Date of the operation.',
  TOTALMAINTENANCECOST decimal(10,2) COMMENT 'Total maintenance cost for the warehouse on a given day.',
  ENERGYCONSUMEDKWH decimal(10,2) COMMENT 'Total energy consumption for the warehouse on a given day.',
  VEHICLEUSAGEHOURS decimal(5,2) COMMENT 'Total vehicle usage hours for the warehouse on a given day.',
  TOTALEMPLOYEESINVOLVED decimal(10,0) COMMENT 'Number of employees involved in warehouse operations on a given day.',
  TASKSCOMPLETED decimal(10,0) COMMENT 'Total number of tasks completed in the warehouse on a given day.',
  ADDRESS string NOT NULL,
  CUSTOMER_ID int NOT NULL,
  WAREHOUSE_ID string NOT NULL COMMENT 'Unique identifier for each warehouse.',
  CUSTOMER_ID_1 decimal(10,0) NOT NULL COMMENT 'A unique identifier for each customer.',
  CONSTRAINT FK_ZONEKEY FOREIGN KEY (ZONEKEY) REFERENCES SUPPLYCHAIN.WAREHOUSEZONEDIM (ZONEKEY),
  CONSTRAINT FK_WAREHOUSEKEY FOREIGN KEY (WAREHOUSEKEY) REFERENCES SUPPLYCHAIN.WAREHOUSE_1 (WAREHOUSEID),
  CONSTRAINT FK_80 FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS (CUSTOMER_ID),
  CONSTRAINT FK_99 FOREIGN KEY (WAREHOUSE_ID) REFERENCES SC.WAREHOUSE (WAREHOUSE_ID),
  CONSTRAINT FK_DATEKEY FOREIGN KEY (DATEKEY) REFERENCES SUPPLYCHAIN.DATEDIM (DATEKEY),
  CONSTRAINT FK_102 FOREIGN KEY (CUSTOMER_ID_1) REFERENCES POS.CUSTOMER (CUSTOMER_ID),
  CONSTRAINT FK_100 FOREIGN KEY (ZONEKEY) REFERENCES SUPPLYCHAIN.WAREHOUSEZONEDIM (ZONEKEY),
  CONSTRAINT FK_VEHICLEKEY FOREIGN KEY (VEHICLEKEY) REFERENCES SUPPLYCHAIN.TRANSPORTVEHICLEDIM (VEHICLEKEY),
  CONSTRAINT FK_101 FOREIGN KEY (VEHICLEKEY) REFERENCES SUPPLYCHAIN.TRANSPORTVEHICLEDIM (VEHICLEKEY)
)
COMMENT 'This table is designed to provide detailed information about each date, including breakdowns of years, months, weeks, and more. This is commonly used in data warehouses for time-based analysis.';
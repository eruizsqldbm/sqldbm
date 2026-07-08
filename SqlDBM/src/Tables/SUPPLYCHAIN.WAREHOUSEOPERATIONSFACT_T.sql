-- ************************************** SUPPLYCHAIN.WAREHOUSEOPERATIONSFACT_T
CREATE TABLE SUPPLYCHAIN.WAREHOUSEOPERATIONSFACT_T (
  WAREHOUSEOPERATIONID decimal(10,0) NOT NULL CONSTRAINT PK_WAREHOUSEOPERATIONSFACT PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The unique identifier for warehouse operation.',
  WAREHOUSEKEY decimal(10,0) COMMENT 'References the warehouse in the WarehouseDim table.',
  ZONEKEY decimal(10,0) COMMENT 'References the zone in the WarehouseZoneDim table.',
  VEHICLEKEY decimal(10,0) COMMENT 'References the vehicle in the TransportVehicleDim table.',
  DATEKEY date COMMENT 'Date of the operation.',
  WAREHOUSEID decimal(10,0) NOT NULL COMMENT 'The ''WarehouseID'' column contains data related to ''warehouseid''. This column likely represents an identifier.',
  FROM_DTS timestamp NOT NULL,
  TOTALMAINTENANCECOST decimal(10,2) COMMENT 'Total maintenance cost for the warehouse on a given day.',
  ENERGYCONSUMEDKWH decimal(10,2) COMMENT 'Total energy consumption for the warehouse on a given day.',
  VEHICLEUSAGEHOURS decimal(5,2) COMMENT 'Total vehicle usage hours for the warehouse on a given day.',
  TOTALEMPLOYEESINVOLVED decimal(10,0) COMMENT 'Number of employees involved in warehouse operations on a given day.',
  TASKSCOMPLETED decimal(10,0) COMMENT 'Total number of tasks completed in the warehouse on a given day.',
  ADDRESS string NOT NULL,
  CONSTRAINT FK_ZONEKEY FOREIGN KEY (ZONEKEY) REFERENCES SUPPLYCHAIN.WAREHOUSEZONEDIM_T (ZONEKEY),
  CONSTRAINT FK_VEHICLEKEY FOREIGN KEY (VEHICLEKEY) REFERENCES SUPPLYCHAIN.TRANSPORTVEHICLEDIM_T (VEHICLEKEY),
  CONSTRAINT FK_DATEKEY FOREIGN KEY (DATEKEY) REFERENCES SUPPLYCHAIN.DATEDIM_T (DATEKEY),
  CONSTRAINT FK_80 FOREIGN KEY (WAREHOUSEID, FROM_DTS) REFERENCES SUPPLYCHAIN.DIM_WAREHOUSE_T (WAREHOUSEID, FROM_DTS),
  CONSTRAINT FK_WAREHOUSEKEY FOREIGN KEY (WAREHOUSEKEY) REFERENCES SUPPLYCHAIN.WAREHOUSE_T (WAREHOUSEID)
)
COMMENT 'This table is designed to provide detailed information about each date, including breakdowns of years, months, weeks, and more. This is commonly used in data warehouses for time-based analysis.';
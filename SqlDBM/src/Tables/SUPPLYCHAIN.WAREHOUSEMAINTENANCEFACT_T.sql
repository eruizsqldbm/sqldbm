-- ************************************** SUPPLYCHAIN.WAREHOUSEMAINTENANCEFACT_T
CREATE TABLE SUPPLYCHAIN.WAREHOUSEMAINTENANCEFACT_T (
  MAINTENANCEID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''MaintenanceID'' column contains data related to ''maintenanceid''. This column likely represents an identifier.',
  WAREHOUSEKEY decimal(10,0) COMMENT 'The ''WarehouseKey'' column contains data related to ''warehousekey''.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  MAINTENANCETYPE string(50) COMMENT 'The ''MaintenanceType'' column contains data related to ''maintenancetype''.',
  MAINTENANCECOST decimal(10,2) COMMENT 'The ''MaintenanceCost'' column contains data related to ''maintenancecost''.',
  MAINTENANCEDURATIONHOURS decimal(5,2) COMMENT 'The ''MaintenanceDurationHours'' column contains data related to ''maintenancedurationhours''.'
);
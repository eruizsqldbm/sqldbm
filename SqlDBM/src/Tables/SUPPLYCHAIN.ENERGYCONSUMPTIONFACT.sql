-- ************************************** SUPPLYCHAIN.ENERGYCONSUMPTIONFACT
CREATE TABLE SUPPLYCHAIN.ENERGYCONSUMPTIONFACT (
  ENERGYID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''EnergyID'' column contains data related to ''energyid''. This column likely represents an identifier.',
  WAREHOUSEKEY decimal(10,0) COMMENT 'The ''WarehouseKey'' column contains data related to ''warehousekey''.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  ENERGYCONSUMEDKWH decimal(10,2) COMMENT 'The ''EnergyConsumedKWh'' column contains data related to ''energyconsumedkwh''.',
  ENERGYCOST decimal(10,2) COMMENT 'The ''EnergyCost'' column contains data related to ''energycost''.'
);
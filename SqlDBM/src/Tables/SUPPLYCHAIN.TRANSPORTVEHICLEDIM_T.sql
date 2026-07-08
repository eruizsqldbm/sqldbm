-- ************************************** SUPPLYCHAIN.TRANSPORTVEHICLEDIM_T
CREATE TABLE SUPPLYCHAIN.TRANSPORTVEHICLEDIM_T (
  VEHICLEKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''VehicleKey'' column contains data related to ''vehiclekey''.',
  VEHICLEID string(100) COMMENT 'The ''VehicleID'' column contains data related to ''vehicleid''. This column likely represents an identifier.',
  VEHICLETYPE string(100) COMMENT 'The ''VehicleType'' column contains data related to ''vehicletype''.',
  CAPACITY decimal(10,0) COMMENT 'The ''Capacity'' column contains data related to ''capacity''.',
  LICENSEPLATE string(20) COMMENT 'The ''LicensePlate'' column contains data related to ''licenseplate''.',
  OPERATORNAME string(100) COMMENT 'The ''OperatorName'' column contains data related to ''operatorname''. This column holds name-related data.'
)
COMMENT 'Dimension table containing attributes and details of transport vehicles used in supply chain operations.';
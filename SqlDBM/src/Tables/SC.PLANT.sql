-- ************************************** SC.PLANT
CREATE TABLE SC.PLANT (
  PLANT_ID string NOT NULL CONSTRAINT PK_PLANT PRIMARY KEY COMMENT 'Unique identifier for each manufacturing or production plant.',
  PLANT_NAME string(80) COMMENT 'The name of the plant.',
  LOCATION string(100) COMMENT 'The physical location of the plant.',
  REGION string COMMENT 'The region code where the plant operates.',
  CREATED_DATE date COMMENT 'The date when the plant record was created.'
)
COMMENT 'Represents manufacturing or production facilities within the supply chain.';
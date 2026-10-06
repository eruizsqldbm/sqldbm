-- ************************************** PLANT_DIMENSION
CREATE TABLE PLANT_DIMENSION (
  PLANT_ID string NOT NULL CONSTRAINT PK_PLANT_DIMENSION PRIMARY KEY COMMENT 'Unique identifier for the plant.',
  PLANT_NAME string(255) COMMENT 'Name of the plant.',
  LOCATION string(255) COMMENT 'Geographical location of the plant.',
  MANAGER string(100) COMMENT 'Name of the plant manager.'
)
COMMENT 'Dimension table for plants, storing details such as name, location, and management information.';
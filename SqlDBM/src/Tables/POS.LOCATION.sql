-- ************************************** POS.LOCATION
CREATE TABLE POS.LOCATION (
  LOCATION_ID decimal(10,0) NOT NULL CONSTRAINT PK_LOCATION PRIMARY KEY COMMENT 'A unique identifier for each location.',
  NAME string NOT NULL COMMENT 'The name of the location.',
  ADDRESS string COMMENT 'The address of the location.',
  CITY string COMMENT 'The city where the location is based.',
  STATE string COMMENT 'The state of the location.',
  POSTAL_CODE string COMMENT 'The postal code of the location.',
  PHONE string COMMENT 'The phone number of the location'
)
COMMENT 'Table stores information about different business locations, such as restaurants, retail stores, or branches of a business.';
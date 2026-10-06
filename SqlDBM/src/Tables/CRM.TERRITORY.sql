-- ************************************** CRM.TERRITORY
CREATE TABLE CRM.TERRITORY (
  TERRITORY_ID string NOT NULL CONSTRAINT PK_TERRITORY PRIMARY KEY COMMENT 'Unique identifier for each territory. Serves as the primary key for territory records.',
  NAME string(80) NOT NULL COMMENT 'The name of the territory (e.g., West Region, Enterprise Accounts). Used to identify and categorize territories.',
  DESCRIPTION string COMMENT 'Optional text providing additional details or purpose of the territory.',
  CREATED_DATE date COMMENT 'The date when the territory record was created in the CRM system.'
)
COMMENT 'Defines geographical or organizational regions for managing sales or service operations, aiding in resource allocation and performance tracking.';
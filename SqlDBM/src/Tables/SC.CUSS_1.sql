-- ************************************** SC.CUSS_1
CREATE TABLE SC.CUSS_1 (
  CUSS_ID string NOT NULL CONSTRAINT PK_CUSS PRIMARY KEY COMMENT 'Unique identifier for each customer.',
  CUSS_NAME string(100) COMMENT 'The name of the customer organization or individual.',
  COUNTRY string COMMENT 'The country code where the customer is located.',
  CONTACT_NAME string(100) COMMENT 'The primary contact person for the customer.',
  PHONE string COMMENT 'The contact phone number for the customer.'
)
COMMENT 'Stores information about customers who place orders in the supply chain.';
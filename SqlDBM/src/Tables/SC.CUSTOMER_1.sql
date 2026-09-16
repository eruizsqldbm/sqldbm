-- ************************************** SC.CUSTOMER_1
CREATE TABLE SC.CUSTOMER_1 (
  CUSTOMER_ID string NOT NULL CONSTRAINT PK_CUSTOMER PRIMARY KEY COMMENT 'Unique identifier for each customer.',
  CUSTOMER_NAME string(100) COMMENT 'The name of the customer organization or individual.',
  COUNTRY string COMMENT 'The country code where the customer is located.',
  CONTACT_NAME string(100) COMMENT 'The primary contact person for the customer.',
  PHONE string COMMENT 'The contact phone number for the customer.'
)
COMMENT 'Stores information about customers who place orders in the supply chain.';
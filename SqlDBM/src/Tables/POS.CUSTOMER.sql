-- ************************************** POS.CUSTOMER
CREATE TABLE POS.CUSTOMER (
  CUSTOMER_ID decimal(10,0) NOT NULL CONSTRAINT PK_CUSTOMER PRIMARY KEY COMMENT 'A unique identifier for each customer.',
  FIRST_NAME string COMMENT 'The first name of the customer',
  LAST_NAME string COMMENT 'The last name of the customer.',
  EMAIL string COMMENT 'The email address of the customer.',
  PHONE string COMMENT 'The phone number of the customer.',
  CREATED_DATE date COMMENT 'The date when the customer record was created.'
)
COMMENT 'Table stores details about customers who make purchases or reservations.';
-- ************************************** POS.DIM_CUSTOMER
CREATE TABLE POS.DIM_CUSTOMER (
  CUSTOMER_ID decimal(10,0) NOT NULL COMMENT 'A unique identifier for each customer.',
  FROM_DTS timestamp NOT NULL,
  TO_DTS timestamp NOT NULL,
  FIRST_NAME string COMMENT 'The first name of the customer',
  LAST_NAME string COMMENT 'The last name of the customer.',
  EMAIL string COMMENT 'The email address of the customer.',
  PHONE string COMMENT 'The phone number of the customer.',
  CREATED_DATE date COMMENT 'The date when the customer record was created.',
  LOAD_DTS timestamp NOT NULL,
  CONSTRAINT PK_1 PRIMARY KEY (CUSTOMER_ID, FROM_DTS)
);
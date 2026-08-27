-- ************************************** Customer
CREATE TABLE Customer (
  customer_number decimal(5, 0) NOT NULL CONSTRAINT PK_Customer PRIMARY KEY COMMENT 'Unique identifier for the customer',
  customer_name varchar(30) COMMENT 'Name of the customer',
  customer_address varchar(30) COMMENT 'Physical address of the customer',
  customer_activity varchar(80) COMMENT 'Description of the customer''s business activity or industry',
  customer_telephone varchar(12) COMMENT 'Primary telephone number for contacting the customer',
  customer_fax varchar(12) COMMENT 'Fax number for the customer'
)
COMMENT 'Master table storing customer information including contact details and business activity';
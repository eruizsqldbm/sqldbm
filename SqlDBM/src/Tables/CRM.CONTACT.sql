-- ************************************** CRM.CONTACT
CREATE TABLE CRM.CONTACT (
  CON_ID string NOT NULL CONSTRAINT PK_CONTACT PRIMARY KEY COMMENT 'Unique identifier for each contact, serving as the primary key.',
  FIRST_NAME string(40) COMMENT 'The first name of the contact.',
  LAST_NAME string(80) NOT NULL COMMENT 'The last name of the contact, which is required for proper identification.',
  ACCOUNT_ID string COMMENT 'References the account associated with this contact.',
  EMAIL string(80) COMMENT 'The email address of the contact, used for communication.',
  PHONE string(40) COMMENT 'The primary phone number for the contact.',
  MOBILE_PHONE string(40) COMMENT 'The mobile phone number of the contact.',
  MAILING_CITY string(40) COMMENT 'The city in the contact’s mailing address.',
  MAILING_COUNTRY string(40) COMMENT 'The country in the contact’s mailing address.',
  CREATED_DATE date COMMENT 'The date when the contact record was created.',
  CUSTOMER_ID decimal(10,0) NOT NULL COMMENT 'A unique identifier for each customer.',
  CONSTRAINT FK_94 FOREIGN KEY (CUSTOMER_ID) REFERENCES POS.CUSTOMER (CUSTOMER_ID),
  CONSTRAINT ACCOUNT_ID FOREIGN KEY (ACCOUNT_ID) REFERENCES CRM.ACCOUNT (ACCOUNT_ID),
  CONSTRAINT FK_95 FOREIGN KEY (ACCOUNT_ID) REFERENCES CRM.ACCOUNT (ACCOUNT_ID)
)
COMMENT 'Represents individuals associated with accounts, tracking their details and enabling personalized interactions.';
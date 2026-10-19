-- ************************************** sap_salesforce.contact
CREATE TABLE sap_salesforce.contact (
  contact_id string NOT NULL CONSTRAINT PK_21 PRIMARY KEY COMMENT 'Salesforce contact ID',
  account_id string NOT NULL COMMENT 'Parent account',
  first_name string NOT NULL COMMENT 'First name. Sensitive personal data.',
  last_name string NOT NULL COMMENT 'Last name. Sensitive personal data.',
  email string NOT NULL COMMENT 'Email address. Sensitive personal data.',
  title string NOT NULL COMMENT 'Job title',
  CONSTRAINT FK_28 FOREIGN KEY (account_id) REFERENCES sap_salesforce.account (account_id)
)
COMMENT 'Salesforce contact. One row per contact.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
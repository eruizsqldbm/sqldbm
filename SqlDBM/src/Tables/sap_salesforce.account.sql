-- ************************************** sap_salesforce.account
CREATE TABLE sap_salesforce.account (
  account_id string NOT NULL CONSTRAINT PK_20 PRIMARY KEY COMMENT 'Salesforce account ID',
  account_name string NOT NULL COMMENT 'Account name',
  industry string NOT NULL COMMENT 'Salesforce industry picklist value',
  billing_address string NOT NULL COMMENT 'Billing address. Sensitive personal data.',
  owner_id string NOT NULL COMMENT 'Salesforce user who owns the account',
  sap_customer_id string COMMENT 'Linked SAP customer number. Null until the account is provisioned in SAP.'
)
COMMENT 'Salesforce account. Salesforce-side representation of a customer, reconcilable to SAP Customer Master.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
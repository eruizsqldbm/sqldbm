-- ************************************** sap_salesforce.support_case
CREATE TABLE sap_salesforce.support_case (
  case_id string NOT NULL CONSTRAINT PK_26 PRIMARY KEY COMMENT 'Salesforce case ID',
  account_id string NOT NULL COMMENT 'Associated account',
  contact_id string NOT NULL COMMENT 'Associated contact',
  case_status string NOT NULL COMMENT 'Open, pending, closed, etc.',
  priority string NOT NULL COMMENT 'Priority level',
  subject string NOT NULL COMMENT 'Case subject line',
  CONSTRAINT FK_32 FOREIGN KEY (account_id) REFERENCES sap_salesforce.account (account_id),
  CONSTRAINT FK_33 FOREIGN KEY (contact_id) REFERENCES sap_salesforce.contact (contact_id)
)
COMMENT 'Salesforce support case. One row per case. Named support_case because \'case\' is a reserved word.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
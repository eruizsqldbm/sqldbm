-- ************************************** sap_salesforce.lead
CREATE TABLE sap_salesforce.lead (
  lead_id string NOT NULL CONSTRAINT PK_22 PRIMARY KEY COMMENT 'Salesforce lead ID',
  company_name string NOT NULL COMMENT 'Prospective company name',
  lead_status string NOT NULL COMMENT 'Open, working, qualified, disqualified, converted',
  lead_source string NOT NULL COMMENT 'Source channel',
  converted_account_id string COMMENT 'Account created on conversion. Populated only after conversion.',
  CONSTRAINT FK_29 FOREIGN KEY (converted_account_id) REFERENCES sap_salesforce.account (account_id)
)
COMMENT 'Salesforce lead. One row per lead.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
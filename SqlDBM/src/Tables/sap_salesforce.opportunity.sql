-- ************************************** sap_salesforce.opportunity
CREATE TABLE sap_salesforce.opportunity (
  opportunity_id string NOT NULL CONSTRAINT PK_23 PRIMARY KEY COMMENT 'Salesforce opportunity ID',
  account_id string NOT NULL COMMENT 'Associated account',
  opportunity_name string NOT NULL COMMENT 'Opportunity name',
  stage string NOT NULL COMMENT 'Sales stage',
  amount decimal(18, 2) NOT NULL COMMENT 'Total opportunity value. Confidential business data.',
  close_date date NOT NULL COMMENT 'Expected or actual close date',
  forecast_category string NOT NULL COMMENT 'Forecast category',
  CONSTRAINT FK_30 FOREIGN KEY (account_id) REFERENCES sap_salesforce.account (account_id)
)
COMMENT 'Salesforce opportunity. One row per opportunity.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
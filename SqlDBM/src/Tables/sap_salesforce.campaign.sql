-- ************************************** sap_salesforce.campaign
CREATE TABLE sap_salesforce.campaign (
  campaign_id string NOT NULL CONSTRAINT PK_25 PRIMARY KEY COMMENT 'Salesforce campaign ID',
  campaign_name string NOT NULL COMMENT 'Campaign name',
  campaign_type string NOT NULL COMMENT 'Campaign type picklist value',
  start_date date NOT NULL COMMENT 'Start date',
  end_date date NOT NULL COMMENT 'End date'
)
COMMENT 'Salesforce campaign header. One row per campaign.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
-- ************************************** sap_salesforce.customer_master
CREATE TABLE sap_salesforce.customer_master (
  customer_id string NOT NULL CONSTRAINT PK_13 PRIMARY KEY COMMENT 'SAP customer number',
  customer_name string NOT NULL COMMENT 'Legal/trading name',
  address_line_1 string NOT NULL COMMENT 'Street address. Sensitive personal data.',
  city string NOT NULL COMMENT 'City. Sensitive personal data.',
  country string NOT NULL COMMENT 'Country code. Sensitive personal data.',
  customer_group string NOT NULL COMMENT 'SAP customer group code',
  sales_organization string NOT NULL COMMENT 'Sales org customer is assigned to',
  industry_code string NOT NULL COMMENT 'SAP industry classification'
)
COMMENT 'SAP customer master (KNA1). One row per customer.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
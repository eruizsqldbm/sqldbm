-- ************************************** sap_salesforce.vendor_master
CREATE TABLE sap_salesforce.vendor_master (
  vendor_id string NOT NULL CONSTRAINT PK_15 PRIMARY KEY COMMENT 'SAP vendor number',
  vendor_name string NOT NULL COMMENT 'Legal/trading name',
  address_line_1 string NOT NULL COMMENT 'Street address',
  city string NOT NULL COMMENT 'City',
  country string NOT NULL COMMENT 'Country code',
  purchasing_organization string NOT NULL COMMENT 'Purchasing org vendor is assigned to'
)
COMMENT 'SAP vendor master (LFA1). One row per vendor.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
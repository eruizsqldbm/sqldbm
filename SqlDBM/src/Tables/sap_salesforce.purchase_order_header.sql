-- ************************************** sap_salesforce.purchase_order_header
CREATE TABLE sap_salesforce.purchase_order_header (
  purchase_order_id string NOT NULL CONSTRAINT PK_18 PRIMARY KEY COMMENT 'SAP purchasing document number',
  vendor_id string NOT NULL COMMENT 'Vendor',
  document_date date NOT NULL COMMENT 'PO creation date',
  purchasing_organization string NOT NULL COMMENT 'Purchasing org',
  company_code string NOT NULL COMMENT 'Company code',
  CONSTRAINT FK_25 FOREIGN KEY (vendor_id) REFERENCES sap_salesforce.vendor_master (vendor_id)
)
COMMENT 'SAP purchase order header (EKKO). One row per purchase order.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
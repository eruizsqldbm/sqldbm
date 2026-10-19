-- ************************************** sap_salesforce.sales_order_header
CREATE TABLE sap_salesforce.sales_order_header (
  sales_order_id string NOT NULL CONSTRAINT PK_16 PRIMARY KEY COMMENT 'SAP sales document number',
  customer_id string NOT NULL COMMENT 'Sold-to customer',
  order_date date NOT NULL COMMENT 'Document date',
  sales_organization string NOT NULL COMMENT 'Sales org',
  distribution_channel string NOT NULL COMMENT 'Distribution channel code',
  division string NOT NULL COMMENT 'Product division',
  order_type string NOT NULL COMMENT 'Standard order, rush order, return, etc.',
  crm_opportunity_id string COMMENT 'Salesforce Opportunity that generated this order. Populated only for CRM-originated orders.',
  CONSTRAINT FK_22 FOREIGN KEY (customer_id) REFERENCES sap_salesforce.customer_master (customer_id)
)
COMMENT 'SAP sales order header (VBAK). One row per sales order.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
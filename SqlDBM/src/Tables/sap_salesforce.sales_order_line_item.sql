-- ************************************** sap_salesforce.sales_order_line_item
CREATE TABLE sap_salesforce.sales_order_line_item (
  sales_order_id string NOT NULL COMMENT 'Parent sales order',
  line_item_number int NOT NULL COMMENT 'Line number within the order',
  material_id string NOT NULL COMMENT 'Material ordered',
  order_quantity decimal(18, 4) NOT NULL COMMENT 'Quantity ordered',
  net_value decimal(18, 2) NOT NULL COMMENT 'Net line value. Confidential business data.',
  plant string NOT NULL COMMENT 'Delivering plant',
  CONSTRAINT PK_17 PRIMARY KEY (sales_order_id, line_item_number),
  CONSTRAINT FK_23 FOREIGN KEY (sales_order_id) REFERENCES sap_salesforce.sales_order_header (sales_order_id),
  CONSTRAINT FK_24 FOREIGN KEY (material_id) REFERENCES sap_salesforce.material_master (material_id)
)
COMMENT 'SAP sales order line items (VBAP). Grain: one row per sales order per line item number.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
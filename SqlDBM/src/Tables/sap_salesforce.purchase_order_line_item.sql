-- ************************************** sap_salesforce.purchase_order_line_item
CREATE TABLE sap_salesforce.purchase_order_line_item (
  purchase_order_id string NOT NULL COMMENT 'Parent purchase order',
  line_item_number int NOT NULL COMMENT 'Line number within the PO',
  material_id string NOT NULL COMMENT 'Material ordered',
  order_quantity decimal(18, 4) NOT NULL COMMENT 'Quantity ordered',
  net_price decimal(18, 2) NOT NULL COMMENT 'Net price per unit. Confidential business data.',
  plant string NOT NULL COMMENT 'Receiving plant',
  CONSTRAINT PK_19 PRIMARY KEY (purchase_order_id, line_item_number),
  CONSTRAINT FK_26 FOREIGN KEY (purchase_order_id) REFERENCES sap_salesforce.purchase_order_header (purchase_order_id),
  CONSTRAINT FK_27 FOREIGN KEY (material_id) REFERENCES sap_salesforce.material_master (material_id)
)
COMMENT 'SAP purchase order line items (EKPO). Grain: one row per purchase order per line item number.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
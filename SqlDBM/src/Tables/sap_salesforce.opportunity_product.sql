-- ************************************** sap_salesforce.opportunity_product
CREATE TABLE sap_salesforce.opportunity_product (
  opportunity_id string NOT NULL COMMENT 'Parent opportunity',
  product_id string NOT NULL COMMENT 'Salesforce product ID',
  sap_material_id string COMMENT 'Linked SAP material number. Null until the product is mapped to a SAP material.',
  quantity decimal(18, 4) NOT NULL COMMENT 'Quantity',
  unit_price decimal(18, 2) NOT NULL COMMENT 'Unit sales price. Confidential business data.',
  CONSTRAINT PK_24 PRIMARY KEY (opportunity_id, product_id),
  CONSTRAINT FK_31 FOREIGN KEY (opportunity_id) REFERENCES sap_salesforce.opportunity (opportunity_id)
)
COMMENT 'Salesforce opportunity product lines. Grain: one row per opportunity per product.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
-- ************************************** sap_salesforce.material_master
CREATE TABLE sap_salesforce.material_master (
  material_id string NOT NULL CONSTRAINT PK_14 PRIMARY KEY COMMENT 'SAP material number',
  material_description string NOT NULL COMMENT 'Short text description',
  material_type string NOT NULL COMMENT 'Finished good, raw material, service, etc.',
  base_unit_of_measure string NOT NULL COMMENT 'Base UoM code',
  division string NOT NULL COMMENT 'Product division',
  product_hierarchy string NOT NULL COMMENT 'SAP product hierarchy code. Rolls up to Salesforce product families.'
)
COMMENT 'SAP material master (MARA). One row per material.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
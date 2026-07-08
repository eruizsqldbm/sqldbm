-- ************************************** SC.BILL_OF_MATERIALS_T
CREATE TABLE SC.BILL_OF_MATERIALS_T (
  BOM_ID string NOT NULL CONSTRAINT PK_BILL_OF_MATERIALS PRIMARY KEY COMMENT 'Unique identifier for each Bill of Materials (BOM).',
  MATERIAL_ID string COMMENT 'References the finished product associated with the BOM.',
  COMPONENT_MATERIAL_ID string COMMENT 'References the material used as a component in the BOM.',
  QUANTITY decimal(10,0) COMMENT 'The quantity of the component material required for the finished product.',
  CONSTRAINT COMPONENT_MATERIAL_ID FOREIGN KEY (COMPONENT_MATERIAL_ID) REFERENCES SC.MATERIAL_T (MATERIAL_ID),
  CONSTRAINT MATERIAL_ID FOREIGN KEY (MATERIAL_ID) REFERENCES SC.MATERIAL_T (MATERIAL_ID)
)
COMMENT 'Tracks relationships between finished products and their component materials, including quantities.';
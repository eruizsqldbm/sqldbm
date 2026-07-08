-- ************************************** MATERIAL_DIMENSION_T
CREATE TABLE MATERIAL_DIMENSION_T (
  MATERIAL_ID string NOT NULL CONSTRAINT PK_MATERIAL_DIMENSION PRIMARY KEY COMMENT 'Unique identifier for the material.',
  MATERIAL_NAME string(255) COMMENT 'Descriptive name of the material.',
  MATERIAL_TYPE string(50) COMMENT 'Type or category of the material.',
  UNIT_PRICE decimal(10,0) COMMENT 'Price per unit of the material.'
)
COMMENT 'Dimension table for materials sold, storing details like name, type, and unit price.';
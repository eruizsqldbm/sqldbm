-- ************************************** SC.MATERIAL_T
CREATE TABLE SC.MATERIAL_T (
  MATERIAL_ID string NOT NULL CONSTRAINT PK_MATERIAL PRIMARY KEY COMMENT 'Unique identifier for each material or product.',
  MATERIAL_NAME string(100) NOT NULL COMMENT 'The name or description of the material.',
  MATERIAL_TYPE string COMMENT 'The type or category of the material (e.g., raw material, finished good).',
  MATERIAL_GROUP string COMMENT 'The group or classification for the material.',
  BASE_UNIT string COMMENT 'The base unit of measure for the material (e.g., KG, PCS).',
  CREATED_DATE date COMMENT 'The date when the material record was created.'
)
COMMENT 'Stores master data for materials and products in the supply chain.';
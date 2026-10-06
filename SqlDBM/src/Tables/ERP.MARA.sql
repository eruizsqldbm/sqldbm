-- ************************************** ERP.MARA
CREATE TABLE ERP.MARA (
  MATNR string NOT NULL CONSTRAINT PK_MARA PRIMARY KEY COMMENT 'Serves as a central repository for material master records, encompassing essential information applicable across various organizational levels.',
  MTART string COMMENT 'Classification of the material (e.g., raw material, finished product); linked to table T134.',
  MATKL string COMMENT 'Grouping of materials with similar attributes; linked to table T023.',
  MEINS string COMMENT 'Unit of Measure'
)
COMMENT 'Table stores general data about materials, such as material types, material groups, and units of measure. It is part of the Material Management (MM) module.';
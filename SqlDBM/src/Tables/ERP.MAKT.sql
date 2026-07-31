-- ************************************** ERP.MAKT
CREATE TABLE ERP.MAKT (
  MATNR string NOT NULL COMMENT 'Unique identifier for the material; links to the MARA table for general material data.',
  SPRAS string NOT NULL COMMENT 'Specifies the language of the material description; linked to table T002 for language codes.',
  MAKTX string(40) COMMENT 'Provides the material''s short description in the specified language.',
  CONSTRAINT MATNR PRIMARY KEY (MATNR, SPRAS)
)
COMMENT 'Table stores material descriptions in various languages.';
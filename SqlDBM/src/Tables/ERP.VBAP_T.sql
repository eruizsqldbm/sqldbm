-- ************************************** ERP.VBAP_T
CREATE TABLE ERP.VBAP_T (
  VBELN string NOT NULL COMMENT 'Sales Document Number',
  POSNR string NOT NULL COMMENT 'Item Number',
  MATNR string COMMENT 'Material Number',
  KWMENG decimal(10,0),
  CONSTRAINT VBELN PRIMARY KEY (VBELN, POSNR)
)
COMMENT 'Table stores item-level data for sales orders, including materials, quantities, and pricing information.';
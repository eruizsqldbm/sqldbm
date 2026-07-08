-- ************************************** ERP.VBRP_T
CREATE TABLE ERP.VBRP_T (
  VBELN string NOT NULL COMMENT 'Billing Document Number.',
  POSNR string NOT NULL COMMENT 'Billing Document Item Number.',
  MATNR string COMMENT 'Material Number.',
  FKIMG decimal(10,0) COMMENT 'Billing Quantity.',
  CONSTRAINT VBELN PRIMARY KEY (VBELN, POSNR)
)
COMMENT 'Table stores item-level details for billing documents in the Sales and Distribution (SD) module of SAP.';
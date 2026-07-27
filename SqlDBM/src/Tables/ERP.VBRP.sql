-- ************************************** ERP.VBRP
CREATE TABLE ERP.VBRP (
  VBELN string NOT NULL COMMENT 'Billing Document Number.',
  POSNR string NOT NULL COMMENT 'Billing Document Item Number.',
  MATNR string COMMENT 'Material Number.',
  FKIMG decimal(10,0) COMMENT 'Billing Quantity.',
  CONSTRAINT VBELN PRIMARY KEY (VBELN, POSNR),
  CONSTRAINT FK_110 FOREIGN KEY (VBELN) REFERENCES ERP.VBRK (VBELN)
)
COMMENT 'Table stores item-level details for billing documents in the Sales and Distribution (SD) module of SAP.';
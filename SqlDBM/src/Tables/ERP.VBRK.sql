-- ************************************** ERP.VBRK
CREATE TABLE ERP.VBRK (
  VBELN string NOT NULL CONSTRAINT PK_VBRK PRIMARY KEY COMMENT 'Billing Document Number',
  FKDAT date COMMENT 'Billing Date',
  KUNNR string COMMENT 'Customer Number',
  NETWR decimal(10,0) COMMENT 'Net Value of the Billing Document',
  CONSTRAINT FK_107 FOREIGN KEY (KUNNR) REFERENCES ERP.KNA_1 (KUNNR),
  CONSTRAINT FK_109 FOREIGN KEY (VBELN) REFERENCES ERP.VBAK (VBELN)
)
COMMENT 'Table stores header information for billing documents, including the customer, billing date, and billing amount.';
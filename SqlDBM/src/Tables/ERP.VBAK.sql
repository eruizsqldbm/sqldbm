-- ************************************** ERP.VBAK
CREATE TABLE ERP.VBAK (
  VBELN string NOT NULL CONSTRAINT PK_VBAK PRIMARY KEY COMMENT 'Sales Document Number',
  VKORG string COMMENT 'Sales Organization',
  KUNNR string COMMENT 'Customer Number',
  ERDAT date COMMENT 'Document Creation Date',
  CONSTRAINT FK_86 FOREIGN KEY (KUNNR) REFERENCES ERP.KNA_1 (KUNNR)
)
COMMENT 'Table stores the header data for sales orders, including the sales organization, customer, and document creation date.';
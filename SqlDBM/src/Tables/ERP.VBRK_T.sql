-- ************************************** ERP.VBRK_T
CREATE TABLE ERP.VBRK_T (
  VBELN string NOT NULL CONSTRAINT PK_VBRK PRIMARY KEY COMMENT 'Billing Document Number',
  FKDAT date COMMENT 'Billing Date',
  KUNNR string COMMENT 'Customer Number',
  NETWR decimal(10,0) COMMENT 'Net Value of the Billing Document'
)
COMMENT 'Table stores header information for billing documents, including the customer, billing date, and billing amount.';
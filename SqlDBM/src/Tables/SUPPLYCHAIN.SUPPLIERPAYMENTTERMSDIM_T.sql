-- ************************************** SUPPLYCHAIN.SUPPLIERPAYMENTTERMSDIM_T
CREATE TABLE SUPPLYCHAIN.SUPPLIERPAYMENTTERMSDIM_T (
  PAYMENTTERMSKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''PaymentTermsKey'' column contains data related to ''paymenttermskey''.',
  SUPPLIERKEY decimal(10,0) COMMENT 'The ''SupplierKey'' column contains data related to ''supplierkey''.',
  PAYMENTTERMDESCRIPTION string(255) COMMENT 'The ''PaymentTermDescription'' column contains data related to ''paymenttermdescription''.'
);
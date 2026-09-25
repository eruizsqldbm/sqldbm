-- ************************************** SUPPLYCHAIN.SUPPLIERPERFORMANCEFACT_T
CREATE TABLE SUPPLYCHAIN.SUPPLIERPERFORMANCEFACT_T (
  SUPPLIERPERFORMANCEFACTID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''SupplierPerformanceFactID'' column contains data related to ''supplierperformancefactid''. This column likely represents an identifier.',
  SUPPLIERKEY decimal(10,0) COMMENT 'The ''SupplierKey'' column contains data related to ''supplierkey''.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  LEADTIME decimal(10,0) COMMENT 'The ''LeadTime'' column contains data related to ''leadtime''. This column stores information related to dates or times.',
  DEFECTRATE decimal(5,2) COMMENT 'The ''DefectRate'' column contains data related to ''defectrate''.',
  ONTIMEDELIVERYRATE decimal(5,2) COMMENT 'The ''OnTimeDeliveryRate'' column contains data related to ''ontimedeliveryrate''. This column stores information related to dates or times.'
);
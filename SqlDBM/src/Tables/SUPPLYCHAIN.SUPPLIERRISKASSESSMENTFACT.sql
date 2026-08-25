-- ************************************** SUPPLYCHAIN.SUPPLIERRISKASSESSMENTFACT
CREATE TABLE SUPPLYCHAIN.SUPPLIERRISKASSESSMENTFACT (
  ASSESSMENTID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''AssessmentID'' column contains data related to ''assessmentid''. This column likely represents an identifier.',
  SUPPLIERKEY decimal(10,0) COMMENT 'The ''SupplierKey'' column contains data related to ''supplierkey''.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  RISKLEVEL string(50) COMMENT 'The ''RiskLevel'' column contains data related to ''risklevel''.',
  ASSESSMENTNOTES string(500) COMMENT 'The ''AssessmentNotes'' column contains data related to ''assessmentnotes''.'
);
-- ************************************** SUPPLYCHAIN.SUPPLIERRELATIONSHIPDIM_T
CREATE TABLE SUPPLYCHAIN.SUPPLIERRELATIONSHIPDIM_T (
  SUPPLIERRELATIONSHIPKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''SupplierRelationshipKey'' column contains data related to ''supplierrelationshipkey''.',
  SUPPLIERKEY decimal(10,0) COMMENT 'The ''SupplierKey'' column contains data related to ''supplierkey''.',
  RELATIONSHIPTYPE string(50) COMMENT 'The ''RelationshipType'' column contains data related to ''relationshiptype''.',
  AGREEMENTDETAILS string(500) COMMENT 'The ''AgreementDetails'' column contains data related to ''agreementdetails''.'
);
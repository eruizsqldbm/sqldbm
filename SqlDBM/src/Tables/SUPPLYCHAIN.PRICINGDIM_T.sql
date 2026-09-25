-- ************************************** SUPPLYCHAIN.PRICINGDIM_T
CREATE TABLE SUPPLYCHAIN.PRICINGDIM_T (
  PRICINGKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''PricingKey'' column contains data related to ''pricingkey''.',
  PRODUCTKEY decimal(10,0) COMMENT 'The ''ProductKey'' column contains data related to ''productkey''.',
  CUSTOMERKEY decimal(10,0) COMMENT 'The ''CustomerKey'' column contains data related to ''customerkey''.',
  PRICETIER string(50) COMMENT 'The ''PriceTier'' column contains data related to ''pricetier''. This column represents a numeric value, likely related to amounts or prices.',
  UNITPRICE decimal(10,2) COMMENT 'The ''UnitPrice'' column contains data related to ''unitprice''. This column represents a numeric value, likely related to amounts or prices.',
  EFFECTIVESTARTDATE date COMMENT 'The ''EffectiveStartDate'' column contains data related to ''effectivestartdate''. This column stores information related to dates or times.',
  EFFECTIVEENDDATE date COMMENT 'The ''EffectiveEndDate'' column contains data related to ''effectiveenddate''. This column stores information related to dates or times.'
);
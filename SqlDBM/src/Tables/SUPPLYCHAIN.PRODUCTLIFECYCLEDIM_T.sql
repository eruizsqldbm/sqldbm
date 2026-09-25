-- ************************************** SUPPLYCHAIN.PRODUCTLIFECYCLEDIM_T
CREATE TABLE SUPPLYCHAIN.PRODUCTLIFECYCLEDIM_T (
  LIFECYCLEKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''LifecycleKey'' column contains data related to ''lifecyclekey''.',
  PRODUCTKEY decimal(10,0) COMMENT 'The ''ProductKey'' column contains data related to ''productkey''.',
  LIFECYCLESTAGE string(50) COMMENT 'The ''LifecycleStage'' column contains data related to ''lifecyclestage''.',
  EFFECTIVESTARTDATE date COMMENT 'The ''EffectiveStartDate'' column contains data related to ''effectivestartdate''. This column stores information related to dates or times.',
  EFFECTIVEENDDATE date COMMENT 'The ''EffectiveEndDate'' column contains data related to ''effectiveenddate''. This column stores information related to dates or times.'
);
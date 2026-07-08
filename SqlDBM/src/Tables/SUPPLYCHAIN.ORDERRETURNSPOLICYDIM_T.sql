-- ************************************** SUPPLYCHAIN.ORDERRETURNSPOLICYDIM_T
CREATE TABLE SUPPLYCHAIN.ORDERRETURNSPOLICYDIM_T (
  RETURNSPOLICYKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''ReturnsPolicyKey'' column contains data related to ''returnspolicykey''.',
  POLICYDESCRIPTION string(255) COMMENT 'The ''PolicyDescription'' column contains data related to ''policydescription''.',
  RETURNWINDOWDAYS decimal(10,0) COMMENT 'The ''ReturnWindowDays'' column contains data related to ''returnwindowdays''.'
);
-- ************************************** SUPPLYCHAIN.CATEGORYDIM_T
CREATE TABLE SUPPLYCHAIN.CATEGORYDIM_T (
  CATEGORYKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''CategoryKey'' column contains data related to ''categorykey''.',
  CATEGORYNAME string(255) NOT NULL COMMENT 'The ''CategoryName'' column contains data related to ''categoryname''. This column holds name-related data.',
  DESCRIPTION string(500) COMMENT 'The ''Description'' column contains data related to ''description''.'
);
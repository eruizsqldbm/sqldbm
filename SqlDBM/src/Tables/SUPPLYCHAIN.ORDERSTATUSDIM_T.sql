-- ************************************** SUPPLYCHAIN.ORDERSTATUSDIM_T
CREATE TABLE SUPPLYCHAIN.ORDERSTATUSDIM_T (
  ORDERSTATUSKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''OrderStatusKey'' column contains data related to ''orderstatuskey''. This column contains status information.',
  STATUSDESCRIPTION string(255) NOT NULL COMMENT 'The ''StatusDescription'' column contains data related to ''statusdescription''. This column contains status information.'
);
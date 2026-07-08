-- ************************************** SUPPLYCHAIN.ORDERCANCELLATIONREASONDIM_T
CREATE TABLE SUPPLYCHAIN.ORDERCANCELLATIONREASONDIM_T (
  CANCELLATIONREASONKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''CancellationReasonKey'' column contains data related to ''cancellationreasonkey''.',
  REASONDESCRIPTION string(255) NOT NULL COMMENT 'The ''ReasonDescription'' column contains data related to ''reasondescription''.'
);
-- ************************************** SUPPLYCHAIN.CUSTOMERLOYALTYPROGRAMDIM_T
CREATE TABLE SUPPLYCHAIN.CUSTOMERLOYALTYPROGRAMDIM_T (
  LOYALTYPROGRAMKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''LoyaltyProgramKey'' column contains data related to ''loyaltyprogramkey''.',
  CUSTOMERKEY decimal(10,0) COMMENT 'The ''CustomerKey'' column contains data related to ''customerkey''.',
  PROGRAMNAME string(100) COMMENT 'The ''ProgramName'' column contains data related to ''programname''. This column holds name-related data.',
  REWARDPOINTS decimal(10,0) COMMENT 'The ''RewardPoints'' column contains data related to ''rewardpoints''.',
  PROGRAMSTARTDATE date COMMENT 'The ''ProgramStartDate'' column contains data related to ''programstartdate''. This column stores information related to dates or times.'
);
-- ************************************** CRM.CONTRACT
CREATE TABLE CRM.CONTRACT (
  CONTRACT_ID string NOT NULL CONSTRAINT PK_CONTRACT PRIMARY KEY COMMENT 'Unique identifier for each contract, serving as the primary key.',
  ACCOUNT_ID string COMMENT 'References the account associated with this contract.',
  START_DATE date COMMENT 'Specifies the start date of the contract.',
  END_DATE date COMMENT 'Specifies the end date or expiration of the contract.',
  STATUS string(20) COMMENT 'Tracks the current status of the contract (e.g., Active, Expired).',
  CREATED_DATE date COMMENT 'The date when the contract record was created in the CRM.',
  LOYALTYPROGRAMKEY decimal(10,0) NOT NULL COMMENT 'The ''LoyaltyProgramKey'' column contains data related to ''loyaltyprogramkey''.',
  CONSTRAINT FK_77 FOREIGN KEY (LOYALTYPROGRAMKEY) REFERENCES SUPPLYCHAIN.CUSTOMERLOYALTYPROGRAMDIM (LOYALTYPROGRAMKEY),
  CONSTRAINT ACCOUNT_ID FOREIGN KEY (ACCOUNT_ID) REFERENCES CRM.ACCOUNT (ACCOUNT_ID)
)
COMMENT 'Manages customer agreements, tracking contract duration, status, and associated accounts.';
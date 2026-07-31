-- ************************************** CRM.OPPORTUNITY
CREATE TABLE CRM.OPPORTUNITY (
  OPPORTUNITY_ID string NOT NULL CONSTRAINT PK_OPPORTUNITY PRIMARY KEY COMMENT 'Unique identifier for each opportunity, serving as the primary key.',
  NAME string(120) NOT NULL COMMENT 'The name of the opportunity, such as Q1 Enterprise Sale.',
  ACCOUNT_ID string COMMENT 'References the account associated with the opportunity, linking the deal to a customer.',
  CLOSE_DATE date COMMENT 'The expected or actual date when the opportunity is closed.',
  STAGE string(40) COMMENT 'Indicates the current stage in the sales pipeline (e.g., Prospecting, Negotiation, Closed Won).',
  AMOUNT decimal(10,0) COMMENT 'Specifies the potential revenue value of the opportunity.',
  PROBABILITY decimal(10,0) COMMENT 'Represents the likelihood of successfully closing the opportunity, expressed as a percentage.',
  CREATED_DATE date COMMENT 'The date when the opportunity record was created.',
  CONSTRAINT FK_96 FOREIGN KEY (ACCOUNT_ID) REFERENCES CRM.ACCOUNT (ACCOUNT_ID),
  CONSTRAINT ACCOUNT_ID FOREIGN KEY (ACCOUNT_ID) REFERENCES CRM.ACCOUNT (ACCOUNT_ID)
)
COMMENT 'Tracks potential revenue-generating deals, providing visibility into the sales pipeline and supporting revenue forecasting.';
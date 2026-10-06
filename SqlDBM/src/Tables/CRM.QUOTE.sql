-- ************************************** CRM.QUOTE
CREATE TABLE CRM.QUOTE (
  QUOTE_ID string NOT NULL CONSTRAINT PK_QUOTE PRIMARY KEY COMMENT 'Unique identifier for each quote, serving as the primary key.',
  OPPORTUNITY_ID string COMMENT 'References the opportunity associated with the quote.',
  STATUS string(20) COMMENT 'Tracks the current status of the quote (e.g., Draft, Approved, Rejected).',
  TOTAL_PRICE decimal(10,0) COMMENT 'The total monetary value of the quote.',
  CREATED_DATE date COMMENT 'The date when the quote record was created.',
  CONSTRAINT OPPORTUNITY_ID FOREIGN KEY (OPPORTUNITY_ID) REFERENCES CRM.OPPORTUNITY (OPPORTUNITY_ID)
)
COMMENT 'Manages customer-facing pricing proposals, linking them to specific opportunities.';
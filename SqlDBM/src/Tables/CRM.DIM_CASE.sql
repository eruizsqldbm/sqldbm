-- ************************************** CRM.DIM_CASE
CREATE TABLE CRM.DIM_CASE (
  CASE_ID string NOT NULL COMMENT 'Unique identifier for each customer case, serving as the primary key.',
  FROM_DTS timestamp NOT NULL,
  TO_DTS timestamp NOT NULL,
  ACCOUNT_ID string COMMENT 'References the account associated with the case, linking the issue to a specific customer.',
  CON_ID string COMMENT 'References the contact associated with the case, providing the individual point of contact for the issue.',
  STATUS string(20) COMMENT 'Tracks the current status of the case (e.g., New, In Progress, Closed).',
  PRIORITY string(10) COMMENT 'Indicates the urgency level of the case (e.g., High, Medium, Low).',
  SUBJECT string(255) COMMENT 'Provides a brief description or title for the case (e.g., "Billing Issue").',
  DESCRIPTION string COMMENT 'Contains detailed information about the case, outlining the customer’s issue or request.',
  CREATED_DATE date COMMENT 'The date when the case record was created in the CRM.',
  LOAD_DTS timestamp NOT NULL,
  CONSTRAINT PK_1 PRIMARY KEY (CASE_ID, FROM_DTS)
);
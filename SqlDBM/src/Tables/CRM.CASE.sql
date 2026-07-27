-- ************************************** CRM.`CASE`
CREATE TABLE CRM.`CASE` (
  CASE_ID string NOT NULL CONSTRAINT PK_CASE PRIMARY KEY COMMENT 'Unique identifier for each customer case, serving as the primary key.',
  ACCOUNT_ID string COMMENT 'References the account associated with the case, linking the issue to a specific customer.',
  CON_ID string COMMENT 'References the contact associated with the case, providing the individual point of contact for the issue.',
  STATUS string(20) COMMENT 'Tracks the current status of the case (e.g., New, In Progress, Closed).',
  PRIORITY string(10) COMMENT 'Indicates the urgency level of the case (e.g., High, Medium, Low).',
  SUBJECT string(255) COMMENT 'Provides a brief description or title for the case (e.g., "Billing Issue").',
  DESCRIPTION string COMMENT 'Contains detailed information about the case, outlining the customer’s issue or request.',
  CREATED_DATE date COMMENT 'The date when the case record was created in the CRM.',
  ADDRESS string NOT NULL,
  CONSTRAINT CON_ID FOREIGN KEY (CON_ID) REFERENCES CRM.CONTACT (CON_ID),
  CONSTRAINT ACCOUNT_ID FOREIGN KEY (ACCOUNT_ID) REFERENCES CRM.ACCOUNT (ACCOUNT_ID)
)
COMMENT 'Tracks customer service issues, complaints, or inquiries, enabling efficient case management and resolution.';
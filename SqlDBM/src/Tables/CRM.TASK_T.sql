-- ************************************** CRM.TASK_T
CREATE TABLE CRM.TASK_T (
  TASK_ID string NOT NULL CONSTRAINT PK_TASK PRIMARY KEY COMMENT 'Unique identifier for each task. Used as the primary key.',
  SUBJECT string(255) COMMENT 'A brief description or title for the task (e.g., "Follow up with client").',
  STATUS string(20) COMMENT 'Indicates the current status of the task (e.g., Open, In Progress, Completed).',
  PRIORITY string(10) COMMENT 'Defines the urgency of the task (e.g., High, Medium, Low).',
  DUE_DATE date COMMENT 'Specifies the deadline for completing the task.',
  CREATED_DATE date COMMENT 'The date when the task record was created in the system.'
)
COMMENT 'Tracks actionable items assigned to CRM users to manage workflows and ensure timely follow-ups.';
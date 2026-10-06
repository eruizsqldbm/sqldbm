-- ************************************** CRM.CAMPAIGN
CREATE TABLE CRM.CAMPAIGN (
  CAMPAIGN_ID string NOT NULL CONSTRAINT PK_CAMPAIGN PRIMARY KEY COMMENT 'Unique identifier for each campaign, serving as the primary key.',
  NAME string(120) NOT NULL COMMENT 'The name of the campaign (e.g., Spring Sale or Customer Retention Drive).',
  TYPE string(40) COMMENT 'Specifies the type of campaign (e.g., Email, Social Media, Direct Mail).',
  STATUS string(20) COMMENT 'The current status of the campaign (e.g., Active, Completed, Planned).',
  START_DATE date COMMENT 'The start date of the campaign.',
  END_DATE date COMMENT 'The end date of the campaign.',
  BUDGETED_COST decimal(10,0) COMMENT 'The estimated financial budget allocated for the campaign.',
  CREATED_DATE date COMMENT 'The date when the campaign record was created.'
)
COMMENT 'Tracks marketing campaigns, including details about their type, duration, budget, and status.';
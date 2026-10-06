-- ************************************** CRM.PROFILE
CREATE TABLE CRM.PROFILE (
  PROFILE_ID string NOT NULL CONSTRAINT PK_PROFILE PRIMARY KEY COMMENT 'Unique identifier for each profile, used as the primary key.',
  NAME string(80) NOT NULL COMMENT 'The name of the profile (e.g., Administrator, Sales Representative).',
  DESCRIPTION string COMMENT 'Optional description providing additional details about the profile and its purpose.'
)
COMMENT 'Manages security and permissions, ensuring users have appropriate access to CRM data and functionalities.';
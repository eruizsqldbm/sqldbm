-- ************************************** CRM.CAMPAIGN_MEMBER
CREATE TABLE CRM.CAMPAIGN_MEMBER (
  MEMBER_ID string NOT NULL CONSTRAINT PK_CAMPAIGN_MEMBER PRIMARY KEY COMMENT 'Unique identifier for each campaign member, serving as the primary key.',
  CAMPAIGN_ID string COMMENT 'References the campaign associated with the member.',
  LEAD_ID string COMMENT 'References the lead associated with the campaign member.',
  STATUS string(20) COMMENT 'Tracks the member''s status within the campaign (e.g., Responded, Sent).',
  CREATED_DATE date COMMENT 'The date when the campaign member record was created.',
  CONSTRAINT CAMPAIGN_ID FOREIGN KEY (CAMPAIGN_ID) REFERENCES CRM.CAMPAIGN (CAMPAIGN_ID),
  CONSTRAINT LEAD_ID FOREIGN KEY (LEAD_ID) REFERENCES CRM.LEAD (LEAD_ID)
)
COMMENT 'Tracks the participation and engagement of leads or contacts in marketing campaigns.';
-- ************************************** CRM.CAMPAIGN
CREATE TABLE CRM.CAMPAIGN (
  CAMPAIGN_ID string NOT NULL CONSTRAINT PK_CAMPAIGN PRIMARY KEY COMMENT 'Unique identifier for each campaign record, serving as the primary key. Used to reference and link campaign data across related tables.',
  NAME string(120) NOT NULL COMMENT 'The descriptive name of the campaign (e.g., ''Spring Sale'' or ''Customer Retention Drive''), used for identification and reporting purposes.',
  TYPE string(40) COMMENT 'Categorizes the campaign by its delivery or engagement channel (e.g., Email, Social Media, Direct Mail), enabling channel-level performance analysis.',
  STATUS string(20) COMMENT 'Represents the current lifecycle stage of the campaign (e.g., Planned, Active, Completed), allowing teams to track progress and filter campaigns by operational state.',
  START_DATE date COMMENT 'The date on which the campaign officially launches and begins targeting its audience. Used alongside END_DATE to define the active campaign window.',
  END_DATE date COMMENT 'The date on which the campaign concludes and stops targeting its audience. Used alongside START_DATE to calculate campaign duration and schedule reporting.',
  BUDGETED_COST decimal(10,0) COMMENT 'The planned financial budget allocated for executing the campaign, expressed as a decimal value. Used for cost planning, approval workflows, and variance analysis against actual spend.',
  CREATED_DATE date COMMENT 'The date on which the campaign record was first created in the system. Useful for auditing, record lifecycle tracking, and understanding when campaigns were introduced into the pipeline.'
)
COMMENT 'Tracks marketing campaigns across all channels, capturing key details such as campaign type, scheduled duration, allocated budget, and current lifecycle status. Used to plan, monitor, and evaluate the effectiveness of marketing initiatives.';
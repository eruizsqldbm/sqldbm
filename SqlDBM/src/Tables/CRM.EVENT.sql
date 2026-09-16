-- ************************************** CRM.EVENT
CREATE TABLE CRM.EVENT (
  EVENT_ID string NOT NULL CONSTRAINT PK_EVENT PRIMARY KEY COMMENT 'Unique identifier for each event, serving as the primary key.',
  SUBJECT string(255) COMMENT 'The title or topic of the event (e.g., "Product Demo" or "Quarterly Review").',
  START_DATE date COMMENT 'The start date and time of the event.',
  END_DATE date COMMENT 'The end date and time of the event.',
  LOCATION string(255) COMMENT 'The physical or virtual location where the event is scheduled to occur.',
  CREATED_DATE date COMMENT 'The date when the event record was created.'
)
COMMENT 'Stores scheduled events, such as meetings or appointments, to track interactions with customers and stakeholders.';
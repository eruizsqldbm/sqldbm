-- ************************************** SUPPLYCHAIN.CUSTOMERFEEDBACKFACT_T
CREATE TABLE SUPPLYCHAIN.CUSTOMERFEEDBACKFACT_T (
  FEEDBACKID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''FeedbackID'' column contains data related to ''feedbackid''. This column likely represents an identifier.',
  CUSTOMERKEY decimal(10,0) COMMENT 'The ''CustomerKey'' column contains data related to ''customerkey''.',
  PRODUCTKEY decimal(10,0) COMMENT 'The ''ProductKey'' column contains data related to ''productkey''.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  FEEDBACKRATING decimal(10,0) COMMENT 'The ''FeedbackRating'' column contains data related to ''feedbackrating''.',
  FEEDBACKCOMMENTS string(500) COMMENT 'The ''FeedbackComments'' column contains data related to ''feedbackcomments''.'
);
-- ************************************** POS.FEEDBACK_T
CREATE TABLE POS.FEEDBACK_T (
  FEEDBACK_ID decimal(10,0) NOT NULL CONSTRAINT PK_FEEDBACK PRIMARY KEY COMMENT 'A unique identifier for each feedback entry.',
  CUSS_ID decimal(10,0) COMMENT 'The customer who provided the feedback, linked to the Customer table.',
  ORDER_ID decimal(10,0) COMMENT 'The order that the feedback relates to, linked to the Order table.',
  RATING decimal(10,0) COMMENT 'A numeric rating provided by the customer.',
  COMMENTS string COMMENT 'The feedback comments from the customer.',
  SUBMITTED_DATE date COMMENT 'The date when the feedback was submitted.',
  CONSTRAINT ORDER_ID FOREIGN KEY (ORDER_ID) REFERENCES POS.ORDER_T (ORDER_ID),
  CONSTRAINT CUSS_ID FOREIGN KEY (CUSS_ID) REFERENCES POS.CUSS_T (CUSS_ID)
)
COMMENT 'Table stores customer feedback related to orders.';
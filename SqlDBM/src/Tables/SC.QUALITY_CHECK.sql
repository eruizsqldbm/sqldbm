-- ************************************** SC.QUALITY_CHECK
CREATE TABLE SC.QUALITY_CHECK (
  QUALITY_CHECK_ID decimal(10,0) NOT NULL CONSTRAINT PK_QUALITY_CHECK PRIMARY KEY COMMENT 'Unique identifier for each quality check.',
  PRODUCTION_ORDER_ID string COMMENT 'References the production order associated with the quality check.',
  CHECK_DATE date COMMENT 'The date when the quality check was performed.',
  RESULT string(20) COMMENT 'The result of the quality check (e.g., Passed, Failed).',
  NOTES string(255) COMMENT 'Additional notes or observations from the quality check.',
  CONSTRAINT PRODUCTION_ORDER_ID FOREIGN KEY (PRODUCTION_ORDER_ID) REFERENCES SC.PRODUCTION_ORDER (PRODUCTION_ORDER_ID),
  CONSTRAINT FK_109 FOREIGN KEY (PRODUCTION_ORDER_ID) REFERENCES SC.PRODUCTION_ORDER (PRODUCTION_ORDER_ID)
)
COMMENT 'Tracks quality checks for production orders, ensuring compliance with quality standards.';
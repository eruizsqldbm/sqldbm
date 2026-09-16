-- ************************************** DATE_DIMENSION
CREATE TABLE DATE_DIMENSION (
  DATE_ID date NOT NULL CONSTRAINT PK_DATE_DIMENSION PRIMARY KEY COMMENT 'Unique identifier for the date.',
  FULL_DATE date COMMENT 'The complete calendar date.',
  YEAR decimal(10,0) COMMENT 'Year component of the date.',
  QUARTER decimal(10,0) COMMENT 'Quarter component of the date (1-4).',
  MONTH decimal(10,0) COMMENT 'Month component of the date (1-12).',
  DAY decimal(10,0) COMMENT 'Day of the month (1-31).',
  DAY_NAME string(15) COMMENT 'Name of the day (e.g., Monday).',
  IS_WEEKEND boolean COMMENT 'Indicates if the date falls on a weekend.'
)
COMMENT 'Dimension table for dates, used for time-based analysis of sales transactions.';
-- ************************************** POS.DIM_DATE
CREATE TABLE POS.DIM_DATE (
  DATE_KEY int NOT NULL CONSTRAINT PK_123 PRIMARY KEY COMMENT 'Surrogate primary key: YYYYMMDD format',
  CALENDAR_DT date NOT NULL COMMENT 'Actual calendar date',
  YEAR int NOT NULL COMMENT 'Calendar year',
  QUARTER int NOT NULL COMMENT 'Quarter (1-4)',
  MONTH int NOT NULL COMMENT 'Month of year (1-12)',
  DAY_OF_MONTH int NOT NULL COMMENT 'Day of month (1-31)',
  DAY_OF_WEEK int NOT NULL COMMENT 'Day of week (1=Monday, 7=Sunday)',
  WEEK_OF_YEAR int NOT NULL COMMENT 'ISO week number',
  IS_WEEKEND_FLG boolean NOT NULL COMMENT 'Flag: 1 if Saturday or Sunday, 0 otherwise',
  IS_HOLIDAY_FLG boolean NOT NULL COMMENT 'Flag: 1 if day is observed holiday, 0 otherwise'
)
COMMENT 'Calendar dimension for time-based analysis of sales transactions.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
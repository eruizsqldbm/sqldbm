-- ************************************** SUPPLYCHAIN.DATEDIM
CREATE TABLE SUPPLYCHAIN.DATEDIM (
  DATEKEY date NOT NULL CONSTRAINT DATEKEY PRIMARY KEY COMMENT 'Primary key for the date dimension, usually in YYYY-MM-DD format.',
  FULLDATE date COMMENT 'The full date value.',
  DAY decimal(10,0) COMMENT 'Day of the month (1-31).',
  DAYSUFFIX string(4) COMMENT 'Suffix for the day (st, nd, rd, th).',
  DAYNAME string(10) COMMENT 'Name of the day (Monday, Tuesday, etc.).',
  WEEKDAYWEEKENDFLAG string(10) COMMENT 'Indicates whether the date is a weekday or weekend.',
  ISHOLIDAY boolean COMMENT 'Indicates if the date is a holiday (true/false).',
  WEEKNUMBEROFYEAR decimal(10,0) COMMENT 'The week number of the year.',
  MONTH decimal(10,0) COMMENT 'Month number (1-12).',
  MONTHNAME string(20) COMMENT 'Full name of the month (January, February, etc.).',
  QUARTER decimal(10,0) COMMENT 'Quarter of the year (1-4).',
  QUARTERNAME string(20) COMMENT 'Full name of the quarter (Q1, Q2, Q3, Q4).',
  YEAR decimal(10,0) COMMENT 'The full year (e.g., 2023).',
  FISCALYEAR decimal(10,0) COMMENT 'Fiscal year associated with the date.',
  FISCALQUARTER decimal(10,0) COMMENT 'Fiscal quarter (1-4).',
  FISCALMONTH decimal(10,0) COMMENT 'Fiscal month (1-12).',
  ISWEEKEND boolean COMMENT 'Indicates if the date is on a weekend (true/false).',
  ISWORKDAY boolean COMMENT 'Indicates if the date is a working day (true/false).'
)
COMMENT 'Date dimension table for time-related analysis';
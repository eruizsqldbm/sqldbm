-- ************************************** Silver.DimCalendar_T
CREATE TABLE Silver.DimCalendar_T (
  DateId date NOT NULL CONSTRAINT PkDimCalendar PRIMARY KEY COMMENT 'Unique identifier for each calendar date, serving as the primary key for the dimension table.',
  Year int COMMENT 'Calendar year extracted from the date.',
  Quarter int COMMENT 'Quarter of the year (1-4) extracted from the date.',
  Month int COMMENT 'Month of the year (1-12) extracted from the date.',
  Day int COMMENT 'Day of the month extracted from the date.',
  DayOfWeek int COMMENT 'Day of the week as a numeric value (0-6 or 1-7 depending on convention).',
  WeekOfYear int COMMENT 'Week number within the calendar year (1-52/53).',
  IsMonthEnd boolean COMMENT 'Flag indicating whether the date is the last day of the month.',
  IsQuarterEnd boolean COMMENT 'Flag indicating whether the date is the last day of the quarter.',
  IsYearEnd boolean COMMENT 'Flag indicating whether the date is the last day of the year.'
)
USING DELTA
COMMENT 'Dimension table containing calendar attributes and date-based metrics for analytical reporting and time-series analysis.'
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-76bae49e-f6a6-4809-877f-6739f8800083', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-41693ea9-2f0b-4ab7-b73f-e0baf2a5df3c', delta.feature.invariants = 'supported');
-- ************************************** Silver.DimCalendar_T
CREATE TABLE Silver.DimCalendar_T (
  DateId date NOT NULL CONSTRAINT PkDimCalendar PRIMARY KEY,
  Year int,
  Quarter int,
  Month int,
  Day int,
  DayOfWeek int,
  WeekOfYear int,
  IsMonthEnd boolean,
  IsQuarterEnd boolean,
  IsYearEnd boolean,
  last_updated timestamp NOT NULL
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-76bae49e-f6a6-4809-877f-6739f8800083', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-41693ea9-2f0b-4ab7-b73f-e0baf2a5df3c', delta.feature.invariants = 'supported');
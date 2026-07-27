-- ************************************** SILVER.DIM_CALENDAR
CREATE TABLE SILVER.DIM_CALENDAR (
  DATE_ID date NOT NULL CONSTRAINT PK_DIM_CALENDAR PRIMARY KEY,
  YEAR int,
  QUARTER int,
  MONTH int,
  DAY int,
  DAY_OF_WEEK int,
  WEEK_OF_YEAR int,
  IS_MONTH_END boolean,
  IS_QUARTER_END boolean,
  IS_YEAR_END boolean
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-76bae49e-f6a6-4809-877f-6739f8800083', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-41693ea9-2f0b-4ab7-b73f-e0baf2a5df3c', delta.feature.invariants = 'supported');
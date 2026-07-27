-- ************************************** SILVER.DIM_PROMOTION
CREATE TABLE SILVER.DIM_PROMOTION (
  PROMOTION_ID string NOT NULL CONSTRAINT PK_DIM_PROMOTION PRIMARY KEY,
  PROMOTION_CODE string,
  PROMOTION_NAME string,
  PROMOTION_TYPE string,
  STATUS string,
  START_DATE date,
  END_DATE date,
  CREATED_TS timestamp,
  UPDATED_TS timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-d0318aca-4252-41ff-9295-ef3f095aa807', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-a61310d4-3f11-469a-b8a1-b7e488bfa4be', delta.feature.invariants = 'supported');
-- ************************************** SILVER.DIM_PAYMENT_METHOD
CREATE TABLE SILVER.DIM_PAYMENT_METHOD (
  PAYMENT_METHOD_ID string NOT NULL CONSTRAINT PK_DIM_PAYMENT_METHOD PRIMARY KEY,
  PAYMENT_METHOD_CODE string,
  PAYMENT_METHOD_NAME string,
  CREATED_TS timestamp,
  UPDATED_TS timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-05ef93e2-4260-4556-92b3-aafe98e60356', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-aef03273-37b8-4354-b136-9c8d38a40190', delta.feature.invariants = 'supported');
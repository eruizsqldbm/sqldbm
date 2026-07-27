-- ************************************** SILVER.DIM_STORE
CREATE TABLE SILVER.DIM_STORE (
  STORE_ID string NOT NULL CONSTRAINT STORE_PK PRIMARY KEY,
  STORE_CODE string,
  STORE_NAME string,
  STORE_TYPE string,
  STATUS string,
  TIMEZONE string,
  ADDRESS1 string,
  ADDRESS2 string,
  CITY string,
  STATE string,
  POSTAL_CODE string,
  COUNTRY string,
  OPEN_DATE date,
  CLOSE_DATE date,
  CREATED_TS timestamp,
  UPDATED_TS timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.constraints.chk_store_status = 'status IS NULL OR status IN (''''Active'''',''''Inactive'''')', delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-68bddec4-cb1a-4fad-90a4-14bad6eb983f', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-b2937d29-407f-4d7b-a40e-f3049834faf6', delta.feature.invariants = 'supported');

ALTER TABLE SILVER.DIM_STORE ADD CONSTRAINT CHK_STORE_STATUS CHECK (status IS NULL OR status IN ('Active','Inactive'));
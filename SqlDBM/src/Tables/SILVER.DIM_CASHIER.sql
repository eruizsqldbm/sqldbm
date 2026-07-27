-- ************************************** SILVER.DIM_CASHIER
CREATE TABLE SILVER.DIM_CASHIER (
  CASHIER_ID string NOT NULL CONSTRAINT PK_DIM_CASHIER PRIMARY KEY,
  EMPLOYEE_NUMBER string,
  CASHIER_NAME string,
  EMAIL string,
  ROLE string,
  STORE_ID string,
  IS_ACTIVE boolean,
  HIRE_DATE date,
  TERMINATION_DATE date,
  CREATED_TS timestamp,
  UPDATED_TS timestamp,
  CONSTRAINT FK_CASHIER_STORE FOREIGN KEY (STORE_ID) REFERENCES SILVER.DIM_STORE (STORE_ID)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-041f09a1-4e10-40f9-9e2d-9b6b99295f74', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-f5e5521a-860b-499c-80a2-3e594e7dc943', delta.feature.invariants = 'supported');
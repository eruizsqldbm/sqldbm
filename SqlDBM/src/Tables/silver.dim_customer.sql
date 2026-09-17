-- ************************************** silver.dim_customer
CREATE TABLE silver.dim_customer (
  customer_id string NOT NULL CONSTRAINT pk_dim_customer PRIMARY KEY,
  loyalty_id string,
  first_name string,
  last_name string,
  email string,
  phone string,
  status string,
  created_ts timestamp,
  updated_ts timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-ed342f61-03c6-4f13-8b15-5914017d0dec', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-57b7ee7b-90f4-4f64-9350-607a920cd52c', delta.feature.invariants = 'supported');
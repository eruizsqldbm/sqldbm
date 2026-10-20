-- ************************************** silver.dim_cashier
CREATE TABLE silver.dim_cashier (
  cashier_id string NOT NULL CONSTRAINT pk_dim_cashier PRIMARY KEY,
  employee_number string,
  cashier_name string,
  email string,
  role string,
  store_id string,
  is_active boolean,
  hire_date date,
  termination_date date,
  created_ts timestamp,
  updated_ts timestamp,
  CONSTRAINT fk_cashier_store FOREIGN KEY (store_id) REFERENCES silver.dim_store (store_id)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-041f09a1-4e10-40f9-9e2d-9b6b99295f74', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-f5e5521a-860b-499c-80a2-3e594e7dc943', delta.feature.invariants = 'supported');
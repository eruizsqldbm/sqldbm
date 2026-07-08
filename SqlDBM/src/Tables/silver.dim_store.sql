-- ************************************** silver.dim_store
CREATE TABLE silver.dim_store (
  store_id string NOT NULL CONSTRAINT store_pk PRIMARY KEY,
  store_code string,
  store_name string,
  store_type string,
  status string,
  timezone string,
  address1 string,
  address2 string,
  city string,
  state string,
  postal_code string,
  country string,
  open_date date,
  close_date date,
  created_ts timestamp,
  updated_ts timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.constraints.chk_store_status = 'status IS NULL OR status IN (''''Active'''',''''Inactive'''')', delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-68bddec4-cb1a-4fad-90a4-14bad6eb983f', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-b2937d29-407f-4d7b-a40e-f3049834faf6', delta.feature.invariants = 'supported');

ALTER TABLE silver.dim_store ADD CONSTRAINT chk_store_status CHECK (status IS NULL OR status IN ('Active','Inactive'));
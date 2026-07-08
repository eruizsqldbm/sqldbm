-- ************************************** silver.dim_register
CREATE TABLE silver.dim_register (
  register_id string NOT NULL CONSTRAINT pk_dim_register PRIMARY KEY,
  store_id string,
  register_number string,
  status string,
  created_ts timestamp,
  updated_ts timestamp,
  CONSTRAINT fk_register_store FOREIGN KEY (store_id) REFERENCES silver.dim_store (store_id)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.constraints.chk_register_status = 'status IS NULL OR status IN (''''Active'''',''''Inactive'''')', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-66b6f09b-44e0-4b74-a0ee-7f23d6b2d25d', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-17d101c4-a7fa-4009-bcee-9decd9eb6dba', delta.feature.invariants = 'supported');

ALTER TABLE silver.dim_register ADD CONSTRAINT chk_register_status CHECK (status IS NULL OR status IN ('Active','Inactive'));
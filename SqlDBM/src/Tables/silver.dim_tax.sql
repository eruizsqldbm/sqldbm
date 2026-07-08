-- ************************************** silver.dim_tax
CREATE TABLE silver.dim_tax (
  tax_id string NOT NULL CONSTRAINT pk_dim_tax PRIMARY KEY,
  tax_name string,
  tax_jurisdiction string,
  tax_rate_pct decimal(9, 6),
  effective_start date,
  effective_end date,
  created_ts timestamp,
  updated_ts timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.constraints.chk_tax_rate_pct = 'tax_rate_pct IS NULL OR (tax_rate_pct >= 0 AND tax_rate_pct <= 30)', delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-f6de8996-a8f8-492d-a128-c936135eb1b7', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-655990f0-4252-40ca-aac2-f74b83d9eee4', delta.feature.invariants = 'supported');

ALTER TABLE silver.dim_tax ADD CONSTRAINT chk_tax_rate_pct CHECK (tax_rate_pct IS NULL OR (tax_rate_pct >= 0 AND tax_rate_pct <= 30));
-- ************************************** SILVER.DIM_TAX
CREATE TABLE SILVER.DIM_TAX (
  TAX_ID string NOT NULL CONSTRAINT PK_DIM_TAX PRIMARY KEY,
  TAX_NAME string,
  TAX_JURISDICTION string,
  TAX_RATE_PCT decimal(9, 6),
  EFFECTIVE_START date,
  EFFECTIVE_END date,
  CREATED_TS timestamp,
  UPDATED_TS timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.constraints.chk_tax_rate_pct = 'tax_rate_pct IS NULL OR (tax_rate_pct >= 0 AND tax_rate_pct <= 30)', delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-f6de8996-a8f8-492d-a128-c936135eb1b7', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-655990f0-4252-40ca-aac2-f74b83d9eee4', delta.feature.invariants = 'supported');

ALTER TABLE SILVER.DIM_TAX ADD CONSTRAINT CHK_TAX_RATE_PCT CHECK (tax_rate_pct IS NULL OR (tax_rate_pct >= 0 AND tax_rate_pct <= 30));
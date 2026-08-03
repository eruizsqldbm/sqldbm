-- ************************************** Silver.DimTax_T
CREATE TABLE Silver.DimTax_T (
  TaxId string NOT NULL CONSTRAINT PkDimTax PRIMARY KEY,
  TaxName string,
  TaxJurisdiction string,
  TaxRatePct decimal(9, 6),
  EffectiveStart date,
  EffectiveEnd date,
  CreatedTs timestamp,
  UpdatedTs timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.constraints.chk_tax_rate_pct = 'tax_rate_pct IS NULL OR (tax_rate_pct >= 0 AND tax_rate_pct <= 30)', delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-f6de8996-a8f8-492d-a128-c936135eb1b7', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-655990f0-4252-40ca-aac2-f74b83d9eee4', delta.feature.invariants = 'supported');

ALTER TABLE Silver.DimTax_T ADD CONSTRAINT ChkTaxRatePct CHECK (tax_rate_pct IS NULL OR (tax_rate_pct >= 0 AND tax_rate_pct <= 30));
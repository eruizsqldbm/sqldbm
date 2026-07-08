-- ************************************** silver.dim_product
CREATE TABLE silver.dim_product (
  product_id string NOT NULL CONSTRAINT pk_dim_product PRIMARY KEY,
  sku string,
  upc string,
  product_name string,
  brand string,
  category string,
  subcategory string,
  uom string,
  status string,
  standard_cost decimal(18, 4),
  list_price decimal(18, 4),
  created_ts timestamp,
  updated_ts timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-f4b440be-2f1e-4d57-897d-6f3ab3ba39fe', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-3b67d074-0d8a-4a13-a2cf-bd1998ff92e4', delta.feature.invariants = 'supported');
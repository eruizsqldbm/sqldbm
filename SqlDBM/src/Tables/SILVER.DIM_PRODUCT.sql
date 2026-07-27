-- ************************************** SILVER.DIM_PRODUCT
CREATE TABLE SILVER.DIM_PRODUCT (
  PRODUCT_ID string NOT NULL CONSTRAINT PK_DIM_PRODUCT PRIMARY KEY,
  SKU string,
  UPC string,
  PRODUCT_NAME string,
  BRAND string,
  CATEGORY string,
  SUBCATEGORY string,
  UOM string,
  STATUS string,
  STANDARD_COST decimal(18, 4),
  LIST_PRICE decimal(18, 4),
  CREATED_TS timestamp,
  UPDATED_TS timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-f4b440be-2f1e-4d57-897d-6f3ab3ba39fe', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-3b67d074-0d8a-4a13-a2cf-bd1998ff92e4', delta.feature.invariants = 'supported');
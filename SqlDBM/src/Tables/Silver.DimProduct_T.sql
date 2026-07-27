-- ************************************** Silver.DimProduct_T
CREATE TABLE Silver.DimProduct_T (
  ProductId string NOT NULL CONSTRAINT PkDimProduct PRIMARY KEY,
  Sku string,
  Upc string,
  ProductName string,
  Brand string,
  Category string,
  Subcategory string,
  Uom string,
  Status string,
  StandardCost decimal(18, 4),
  ListPrice decimal(18, 4),
  CreatedTs timestamp,
  UpdatedTs timestamp,
  last_updated timestamp NOT NULL
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-f4b440be-2f1e-4d57-897d-6f3ab3ba39fe', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-3b67d074-0d8a-4a13-a2cf-bd1998ff92e4', delta.feature.invariants = 'supported');
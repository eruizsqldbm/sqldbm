-- ************************************** Silver.DimStore_T
CREATE TABLE Silver.DimStore_T (
  StoreId string NOT NULL CONSTRAINT StorePk PRIMARY KEY,
  StoreCode string,
  StoreName string,
  StoreType string,
  Status string,
  Timezone string,
  Address1 string,
  Address2 string,
  City string,
  State string,
  PostalCode string,
  Country string,
  OpenDate date,
  CloseDate date,
  CreatedTs timestamp,
  UpdatedTs timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.constraints.chk_store_status = 'status IS NULL OR status IN (''''Active'''',''''Inactive'''')', delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-68bddec4-cb1a-4fad-90a4-14bad6eb983f', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-b2937d29-407f-4d7b-a40e-f3049834faf6', delta.feature.invariants = 'supported');

ALTER TABLE Silver.DimStore_T ADD CONSTRAINT ChkStoreStatus CHECK (status IS NULL OR status IN ('Active','Inactive'));
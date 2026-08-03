-- ************************************** Silver.DimCashier_T
CREATE TABLE Silver.DimCashier_T (
  CashierId string NOT NULL CONSTRAINT PkDimCashier PRIMARY KEY,
  EmployeeNumber string,
  CashierName string,
  Email string,
  Role string,
  StoreId string,
  IsActive boolean,
  HireDate date,
  TerminationDate date,
  CreatedTs timestamp,
  UpdatedTs timestamp,
  CONSTRAINT FkCashierStore FOREIGN KEY (StoreId) REFERENCES Silver.DimStore_T (StoreId)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-041f09a1-4e10-40f9-9e2d-9b6b99295f74', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-f5e5521a-860b-499c-80a2-3e594e7dc943', delta.feature.invariants = 'supported');
-- ************************************** Silver.DimRegister_T
CREATE TABLE Silver.DimRegister_T (
  RegisterId string NOT NULL CONSTRAINT PkDimRegister PRIMARY KEY,
  StoreId string,
  RegisterNumber string,
  Status string,
  CreatedTs timestamp,
  UpdatedTs timestamp,
  CONSTRAINT FkRegisterStore FOREIGN KEY (StoreId) REFERENCES Silver.DimStore_T (StoreId)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.constraints.chk_register_status = 'status IS NULL OR status IN (''''Active'''',''''Inactive'''')', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-66b6f09b-44e0-4b74-a0ee-7f23d6b2d25d', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-17d101c4-a7fa-4009-bcee-9decd9eb6dba', delta.feature.invariants = 'supported');

ALTER TABLE Silver.DimRegister_T ADD CONSTRAINT ChkRegisterStatus CHECK (status IS NULL OR status IN ('Active','Inactive'));
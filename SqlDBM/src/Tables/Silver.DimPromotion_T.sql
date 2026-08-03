-- ************************************** Silver.DimPromotion_T
CREATE TABLE Silver.DimPromotion_T (
  PromotionId string NOT NULL CONSTRAINT PkDimPromotion PRIMARY KEY,
  PromotionCode string,
  PromotionName string,
  PromotionType string,
  Status string,
  StartDate date,
  EndDate date,
  CreatedTs timestamp,
  UpdatedTs timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-d0318aca-4252-41ff-9295-ef3f095aa807', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-a61310d4-3f11-469a-b8a1-b7e488bfa4be', delta.feature.invariants = 'supported');
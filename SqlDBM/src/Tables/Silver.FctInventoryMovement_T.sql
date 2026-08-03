-- ************************************** Silver.FctInventoryMovement_T
CREATE TABLE Silver.FctInventoryMovement_T (
  MovementId string NOT NULL,
  MovementTs timestamp,
  MovementDate date,
  StoreId string,
  ProductId string,
  MovementType string,
  ReferenceType string,
  ReferenceId string,
  Quantity decimal(18, 4),
  UnitCost decimal(18, 4),
  ExtendedCost decimal(18, 2),
  CreatedTs timestamp,
  UpdatedTs timestamp,
  CONSTRAINT FkInvMoveProduct FOREIGN KEY (ProductId) REFERENCES Silver.DimProduct_T (ProductId),
  CONSTRAINT FkInvMoveStore FOREIGN KEY (StoreId) REFERENCES Silver.DimStore_T (StoreId)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.constraints.chk_inv_movement_type = 'movement_type IS NULL OR movement_type IN
  (''''Sale'''',''''Return'''',''''Receipt'''',''''TransferIn'''',''''TransferOut'''',''''Adjust'''')', delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-9b6934f0-9013-4e9f-b632-5e66271705fa', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-ee83dfb6-003f-4faf-b27e-026c0139f69a', delta.feature.invariants = 'supported');

ALTER TABLE Silver.FctInventoryMovement_T ADD CONSTRAINT ChkInvMovementType CHECK (movement_type IS NULL OR movement_type IN
  ('Sale','Return','Receipt','TransferIn','TransferOut','Adjust'));
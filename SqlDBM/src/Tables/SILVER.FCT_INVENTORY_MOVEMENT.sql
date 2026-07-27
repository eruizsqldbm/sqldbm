-- ************************************** SILVER.FCT_INVENTORY_MOVEMENT
CREATE TABLE SILVER.FCT_INVENTORY_MOVEMENT (
  MOVEMENT_ID string NOT NULL,
  MOVEMENT_TS timestamp,
  MOVEMENT_DATE date,
  STORE_ID string,
  PRODUCT_ID string,
  MOVEMENT_TYPE string,
  REFERENCE_TYPE string,
  REFERENCE_ID string,
  QUANTITY decimal(18, 4),
  UNIT_COST decimal(18, 4),
  EXTENDED_COST decimal(18, 2),
  CREATED_TS timestamp,
  UPDATED_TS timestamp,
  CONSTRAINT FK_INV_MOVE_PRODUCT FOREIGN KEY (PRODUCT_ID) REFERENCES SILVER.DIM_PRODUCT (PRODUCT_ID),
  CONSTRAINT FK_INV_MOVE_STORE FOREIGN KEY (STORE_ID) REFERENCES SILVER.DIM_STORE (STORE_ID)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.constraints.chk_inv_movement_type = 'movement_type IS NULL OR movement_type IN
  (''''Sale'''',''''Return'''',''''Receipt'''',''''TransferIn'''',''''TransferOut'''',''''Adjust'''')', delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-9b6934f0-9013-4e9f-b632-5e66271705fa', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-ee83dfb6-003f-4faf-b27e-026c0139f69a', delta.feature.invariants = 'supported');

ALTER TABLE SILVER.FCT_INVENTORY_MOVEMENT ADD CONSTRAINT CHK_INV_MOVEMENT_TYPE CHECK (movement_type IS NULL OR movement_type IN
  ('Sale','Return','Receipt','TransferIn','TransferOut','Adjust'));
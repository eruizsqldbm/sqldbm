-- ************************************** silver.fct_inventory_movement
CREATE TABLE silver.fct_inventory_movement (
  movement_id string NOT NULL,
  movement_ts timestamp,
  movement_date date,
  store_id string,
  product_id string,
  movement_type string,
  reference_type string,
  reference_id string,
  quantity decimal(18, 4),
  unit_cost decimal(18, 4),
  extended_cost decimal(18, 2),
  created_ts timestamp,
  updated_ts timestamp,
  CONSTRAINT fk_inv_move_product FOREIGN KEY (product_id) REFERENCES silver.dim_product (product_id),
  CONSTRAINT fk_inv_move_store FOREIGN KEY (store_id) REFERENCES silver.dim_store (store_id)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.constraints.chk_inv_movement_type = 'movement_type IS NULL OR movement_type IN
  (''''Sale'''',''''Return'''',''''Receipt'''',''''TransferIn'''',''''TransferOut'''',''''Adjust'''')', delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-9b6934f0-9013-4e9f-b632-5e66271705fa', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-ee83dfb6-003f-4faf-b27e-026c0139f69a', delta.feature.invariants = 'supported');

ALTER TABLE silver.fct_inventory_movement ADD CONSTRAINT chk_inv_movement_type CHECK (movement_type IS NULL OR movement_type IN
  ('Sale','Return','Receipt','TransferIn','TransferOut','Adjust'));
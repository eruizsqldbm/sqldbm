-- ************************************** silver.fct_register_shift
CREATE TABLE silver.fct_register_shift (
  shift_id string NOT NULL,
  store_id string,
  register_id string,
  cashier_id string,
  shift_open_ts timestamp,
  shift_close_ts timestamp,
  opening_cash_amount decimal(18, 2),
  closing_cash_amount decimal(18, 2),
  declared_cash_amount decimal(18, 2),
  over_short_amount decimal(18, 2),
  created_ts timestamp,
  updated_ts timestamp,
  CONSTRAINT fk_shift_cashier FOREIGN KEY (cashier_id) REFERENCES silver.dim_cashier (cashier_id),
  CONSTRAINT fk_shift_register FOREIGN KEY (register_id) REFERENCES silver.dim_register (register_id),
  CONSTRAINT fk_shift_store FOREIGN KEY (store_id) REFERENCES silver.dim_store (store_id)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.constraints.chk_shift_cash_amounts = '(opening_cash_amount IS NULL OR opening_cash_amount >= 0) AND
  (closing_cash_amount IS NULL OR closing_cash_amount >= 0) AND
  (declared_cash_amount IS NULL OR declared_cash_amount >= 0)', delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-c9ee15f3-8cc3-4056-91e7-64f2fa824697', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-6f3ba36a-5526-4b72-9a6d-13ab306e2713', delta.feature.invariants = 'supported');

ALTER TABLE silver.fct_register_shift ADD CONSTRAINT chk_shift_cash_amounts CHECK ((opening_cash_amount IS NULL OR opening_cash_amount >= 0) AND
  (closing_cash_amount IS NULL OR closing_cash_amount >= 0) AND
  (declared_cash_amount IS NULL OR declared_cash_amount >= 0));
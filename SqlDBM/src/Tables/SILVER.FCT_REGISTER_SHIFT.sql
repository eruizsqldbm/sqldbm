-- ************************************** SILVER.FCT_REGISTER_SHIFT
CREATE TABLE SILVER.FCT_REGISTER_SHIFT (
  SHIFT_ID string NOT NULL,
  STORE_ID string,
  REGISTER_ID string,
  CASHIER_ID string,
  SHIFT_OPEN_TS timestamp,
  SHIFT_CLOSE_TS timestamp,
  OPENING_CASH_AMOUNT decimal(18, 2),
  CLOSING_CASH_AMOUNT decimal(18, 2),
  DECLARED_CASH_AMOUNT decimal(18, 2),
  OVER_SHORT_AMOUNT decimal(18, 2),
  CREATED_TS timestamp,
  UPDATED_TS timestamp
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.constraints.chk_shift_cash_amounts = '(opening_cash_amount IS NULL OR opening_cash_amount >= 0) AND
  (closing_cash_amount IS NULL OR closing_cash_amount >= 0) AND
  (declared_cash_amount IS NULL OR declared_cash_amount >= 0)', delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-c9ee15f3-8cc3-4056-91e7-64f2fa824697', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-6f3ba36a-5526-4b72-9a6d-13ab306e2713', delta.feature.invariants = 'supported');

ALTER TABLE SILVER.FCT_REGISTER_SHIFT ADD CONSTRAINT CHK_SHIFT_CASH_AMOUNTS CHECK ((opening_cash_amount IS NULL OR opening_cash_amount >= 0) AND
  (closing_cash_amount IS NULL OR closing_cash_amount >= 0) AND
  (declared_cash_amount IS NULL OR declared_cash_amount >= 0));
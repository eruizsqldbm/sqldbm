-- ************************************** Silver.FctRegisterShift_T
CREATE TABLE Silver.FctRegisterShift_T (
  ShiftId string NOT NULL,
  StoreId string,
  RegisterId string,
  CashierId string,
  ShiftOpenTs timestamp,
  ShiftCloseTs timestamp,
  OpeningCashAmount decimal(18, 2),
  ClosingCashAmount decimal(18, 2),
  DeclaredCashAmount decimal(18, 2),
  OverShortAmount decimal(18, 2),
  CreatedTs timestamp,
  UpdatedTs timestamp,
  last_updated timestamp NOT NULL,
  CONSTRAINT FkShiftRegister FOREIGN KEY (RegisterId) REFERENCES Silver.DimRegister_T (RegisterId),
  CONSTRAINT FkShiftStore FOREIGN KEY (StoreId) REFERENCES Silver.DimStore_T (StoreId),
  CONSTRAINT FkShiftCashier FOREIGN KEY (CashierId) REFERENCES Silver.DimCashier_T (CashierId)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.constraints.chk_shift_cash_amounts = '(opening_cash_amount IS NULL OR opening_cash_amount >= 0) AND
  (closing_cash_amount IS NULL OR closing_cash_amount >= 0) AND
  (declared_cash_amount IS NULL OR declared_cash_amount >= 0)', delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-c9ee15f3-8cc3-4056-91e7-64f2fa824697', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-6f3ba36a-5526-4b72-9a6d-13ab306e2713', delta.feature.invariants = 'supported');

ALTER TABLE Silver.FctRegisterShift_T ADD CONSTRAINT ChkShiftCashAmounts CHECK ((opening_cash_amount IS NULL OR opening_cash_amount >= 0) AND
  (closing_cash_amount IS NULL OR closing_cash_amount >= 0) AND
  (declared_cash_amount IS NULL OR declared_cash_amount >= 0));
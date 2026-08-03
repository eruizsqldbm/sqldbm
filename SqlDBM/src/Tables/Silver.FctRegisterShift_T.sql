-- ************************************** Silver.FctRegisterShift_T
CREATE TABLE Silver.FctRegisterShift_T (
  ShiftId string NOT NULL COMMENT 'Unique identifier for the shift',
  StoreId string COMMENT 'Foreign key referencing the store where the shift occurred',
  RegisterId string COMMENT 'Foreign key referencing the register used during the shift',
  CashierId string COMMENT 'Foreign key referencing the cashier who worked the shift',
  ShiftOpenTs timestamp COMMENT 'Timestamp when the shift was opened',
  ShiftCloseTs timestamp COMMENT 'Timestamp when the shift was closed',
  OpeningCashAmount decimal(18, 2) COMMENT 'Cash amount in the register at the start of the shift',
  ClosingCashAmount decimal(18, 2) COMMENT 'Cash amount in the register at the end of the shift',
  DeclaredCashAmount decimal(18, 2) COMMENT 'Cash amount declared by the cashier at shift closing',
  OverShortAmount decimal(18, 2) COMMENT 'Difference between closing cash amount and declared cash amount, indicating overage or shortage',
  CreatedTs timestamp COMMENT 'Timestamp when the record was created',
  UpdatedTs timestamp COMMENT 'Timestamp when the record was last updated',
  OrdId int NOT NULL,
  CONSTRAINT Fk22 FOREIGN KEY (OrdId) REFERENCES ORDERS (ORD_ID),
  CONSTRAINT FkShiftStore FOREIGN KEY (StoreId) REFERENCES Silver.DimStore_T (StoreId),
  CONSTRAINT FkShiftRegister FOREIGN KEY (RegisterId) REFERENCES Silver.DimRegister_T (RegisterId),
  CONSTRAINT FkShiftCashier FOREIGN KEY (CashierId) REFERENCES Silver.DimCashier_T (CashierId)
)
USING DELTA
COMMENT 'Fact table capturing register shift transactions, including opening and closing cash amounts, declared cash, and over/short discrepancies for each shift period.'
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.constraints.chk_shift_cash_amounts = '(opening_cash_amount IS NULL OR opening_cash_amount >= 0) AND
  (closing_cash_amount IS NULL OR closing_cash_amount >= 0) AND
  (declared_cash_amount IS NULL OR declared_cash_amount >= 0)', delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-c9ee15f3-8cc3-4056-91e7-64f2fa824697', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-6f3ba36a-5526-4b72-9a6d-13ab306e2713', delta.feature.invariants = 'supported');

ALTER TABLE Silver.FctRegisterShift_T ADD CONSTRAINT ChkShiftCashAmounts CHECK ((opening_cash_amount IS NULL OR opening_cash_amount >= 0) AND
  (closing_cash_amount IS NULL OR closing_cash_amount >= 0) AND
  (declared_cash_amount IS NULL OR declared_cash_amount >= 0));
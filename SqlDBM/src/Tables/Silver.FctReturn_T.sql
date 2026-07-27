-- ************************************** Silver.FctReturn_T
CREATE TABLE Silver.FctReturn_T (
  ReturnId string NOT NULL,
  OriginalSalesTxnId string,
  SalesTxnId string,
  StoreId string,
  RegisterId string,
  CashierId string,
  CustomerId string,
  ReturnTs timestamp,
  ReturnDate date,
  ReturnReason string,
  RefundAmount decimal(18, 2),
  CurrencyCode string,
  CreatedTs timestamp,
  UpdatedTs timestamp,
  last_updated timestamp NOT NULL,
  CONSTRAINT FkReturnStore FOREIGN KEY (StoreId) REFERENCES Silver.DimStore_T (StoreId),
  CONSTRAINT FkReturnCashier FOREIGN KEY (CashierId) REFERENCES Silver.DimCashier_T (CashierId),
  CONSTRAINT FkReturnCustomer FOREIGN KEY (CustomerId) REFERENCES Silver.DimCustomer_T (CustomerId),
  CONSTRAINT FkReturnRegister FOREIGN KEY (RegisterId) REFERENCES Silver.DimRegister_T (RegisterId)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-6e659cf2-7c4d-4430-9a76-4ee6b02b698e', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-70db9fd8-ace3-43e0-8a60-d1dafa4790b6', delta.feature.invariants = 'supported');
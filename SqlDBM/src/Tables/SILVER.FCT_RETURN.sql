-- ************************************** SILVER.FCT_RETURN
CREATE TABLE SILVER.FCT_RETURN (
  RETURN_ID string NOT NULL,
  ORIGINAL_SALES_TXN_ID string,
  SALES_TXN_ID string,
  STORE_ID string,
  REGISTER_ID string,
  CASHIER_ID string,
  CUSS_ID string,
  RETURN_TS timestamp,
  RETURN_DATE date,
  RETURN_REASON string,
  REFUND_AMOUNT decimal(18, 2),
  CURRENCY_CODE string,
  CREATED_TS timestamp,
  UPDATED_TS timestamp,
  CONSTRAINT FK_RETURN_CUSS FOREIGN KEY (CUSS_ID) REFERENCES SILVER.DIM_CUSS (CUSS_ID),
  CONSTRAINT FK_RETURN_STORE FOREIGN KEY (STORE_ID) REFERENCES SILVER.DIM_STORE (STORE_ID),
  CONSTRAINT FK_RETURN_CASHIER FOREIGN KEY (CASHIER_ID) REFERENCES SILVER.DIM_CASHIER (CASHIER_ID),
  CONSTRAINT FK_RETURN_REGISTER FOREIGN KEY (REGISTER_ID) REFERENCES SILVER.DIM_REGISTER (REGISTER_ID)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-6e659cf2-7c4d-4430-9a76-4ee6b02b698e', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-70db9fd8-ace3-43e0-8a60-d1dafa4790b6', delta.feature.invariants = 'supported');
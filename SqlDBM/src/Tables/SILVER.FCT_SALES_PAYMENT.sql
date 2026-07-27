-- ************************************** SILVER.FCT_SALES_PAYMENT
CREATE TABLE SILVER.FCT_SALES_PAYMENT (
  SALES_TXN_ID string NOT NULL,
  PAYMENT_LINE_NUMBER int NOT NULL,
  PAYMENT_METHOD_ID string,
  PAYMENT_PROVIDER string,
  AUTHORIZATION_CODE string,
  MASKED_ACCOUNT string,
  AMOUNT decimal(18, 2),
  CURRENCY_CODE string,
  CREATED_TS timestamp,
  UPDATED_TS timestamp,
  CONSTRAINT SALES_PAYMENT_PK PRIMARY KEY (SALES_TXN_ID, PAYMENT_LINE_NUMBER),
  CONSTRAINT FK_SALES_PMT_METHOD FOREIGN KEY (PAYMENT_METHOD_ID) REFERENCES SILVER.DIM_PAYMENT_METHOD (PAYMENT_METHOD_ID),
  CONSTRAINT FK_SALES_PMT_HEADER FOREIGN KEY (SALES_TXN_ID) REFERENCES SILVER.FCT_SALES_TXN_HEADER (SALES_TXN_ID)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-8231a91d-8a8a-436f-aec2-e29df5ee15d8', delta.constraints.chk_payment_amount_pos = 'amount IS NULL OR amount >= 0', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-29017bb3-1b1d-4644-aebd-b6e5c546aa44', delta.feature.invariants = 'supported');

ALTER TABLE SILVER.FCT_SALES_PAYMENT ADD CONSTRAINT CHK_PAYMENT_AMOUNT_POS CHECK (amount IS NULL OR amount >= 0);
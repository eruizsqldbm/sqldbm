-- ************************************** SILVER.FCT_SALES_TXN_HEADER
CREATE TABLE SILVER.FCT_SALES_TXN_HEADER (
  SALES_TXN_ID string NOT NULL CONSTRAINT PK_SALES_TXN_HEADER PRIMARY KEY,
  RECEIPT_NUMBER string,
  STORE_ID string,
  REGISTER_ID string,
  CASHIER_ID string,
  CUSS_ID string,
  TXN_TS timestamp,
  TXN_DATE date,
  TXN_STATUS string,
  CURRENCY_CODE string,
  SUBTOTAL_AMOUNT decimal(18, 2),
  DISCOUNT_AMOUNT decimal(18, 2),
  TAX_AMOUNT decimal(18, 2),
  TOTAL_AMOUNT decimal(18, 2),
  CREATED_TS timestamp,
  UPDATED_TS timestamp,
  CONSTRAINT FK_SALES_HDR_STORE FOREIGN KEY (STORE_ID) REFERENCES SILVER.DIM_STORE (STORE_ID),
  CONSTRAINT FK_SALES_HDR_REGISTER FOREIGN KEY (REGISTER_ID) REFERENCES SILVER.DIM_REGISTER (REGISTER_ID),
  CONSTRAINT FK_SALES_HDR_CASHIER FOREIGN KEY (CASHIER_ID) REFERENCES SILVER.DIM_CASHIER (CASHIER_ID),
  CONSTRAINT FK_SALES_HDR_CUSS FOREIGN KEY (CUSS_ID) REFERENCES SILVER.DIM_CUSS (CUSS_ID)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.constraints.chk_sales_hdr_amounts_nonneg = '(subtotal_amount IS NULL OR subtotal_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (total_amount IS NULL OR total_amount >= 0)', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.constraints.chk_sales_hdr_status = 'txn_status IS NULL OR txn_status IN (''''Completed'''',''''Void'''',''''Suspended'''')', delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-85ea30b5-2231-493a-ab6c-53f12e533fd9', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-7646b5c8-1dc3-4bba-8a11-9aab86d7f93c', delta.feature.invariants = 'supported');

ALTER TABLE SILVER.FCT_SALES_TXN_HEADER ADD CONSTRAINT CHK_SALES_HDR_AMOUNTS_NONNEG CHECK ((subtotal_amount IS NULL OR subtotal_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (total_amount IS NULL OR total_amount >= 0));

ALTER TABLE SILVER.FCT_SALES_TXN_HEADER ADD CONSTRAINT CHK_SALES_HDR_STATUS CHECK (txn_status IS NULL OR txn_status IN ('Completed','Void','Suspended'));
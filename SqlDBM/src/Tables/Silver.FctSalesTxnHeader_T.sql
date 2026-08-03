-- ************************************** Silver.FctSalesTxnHeader_T
CREATE TABLE Silver.FctSalesTxnHeader_T (
  SalesTxnId string NOT NULL CONSTRAINT PkSalesTxnHeader PRIMARY KEY,
  ReceiptNumber string,
  StoreId string,
  RegisterId string,
  CashierId string,
  CustomerId string,
  TxnTs timestamp,
  TxnDate date,
  TxnStatus string,
  CurrencyCode string,
  SubtotalAmount decimal(18, 2),
  DiscountAmount decimal(18, 2),
  TaxAmount decimal(18, 2),
  TotalAmount decimal(18, 2),
  CreatedTs timestamp,
  UpdatedTs timestamp,
  CONSTRAINT FkSalesHdrStore FOREIGN KEY (StoreId) REFERENCES Silver.DimStore_T (StoreId),
  CONSTRAINT FkSalesHdrCashier FOREIGN KEY (CashierId) REFERENCES Silver.DimCashier_T (CashierId),
  CONSTRAINT FkSalesHdrRegister FOREIGN KEY (RegisterId) REFERENCES Silver.DimRegister_T (RegisterId),
  CONSTRAINT FkSalesHdrCustomer FOREIGN KEY (CustomerId) REFERENCES Silver.DimCustomer_T (CustomerId)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.constraints.chk_sales_hdr_amounts_nonneg = '(subtotal_amount IS NULL OR subtotal_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (total_amount IS NULL OR total_amount >= 0)', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.constraints.chk_sales_hdr_status = 'txn_status IS NULL OR txn_status IN (''''Completed'''',''''Void'''',''''Suspended'''')', delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-85ea30b5-2231-493a-ab6c-53f12e533fd9', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-7646b5c8-1dc3-4bba-8a11-9aab86d7f93c', delta.feature.invariants = 'supported');

ALTER TABLE Silver.FctSalesTxnHeader_T ADD CONSTRAINT ChkSalesHdrAmountsNonneg CHECK ((subtotal_amount IS NULL OR subtotal_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (total_amount IS NULL OR total_amount >= 0));

ALTER TABLE Silver.FctSalesTxnHeader_T ADD CONSTRAINT ChkSalesHdrStatus CHECK (txn_status IS NULL OR txn_status IN ('Completed','Void','Suspended'));
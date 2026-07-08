-- ************************************** silver.fct_sales_txn_header
CREATE TABLE silver.fct_sales_txn_header (
  sales_txn_id string NOT NULL CONSTRAINT pk_sales_txn_header PRIMARY KEY,
  receipt_number string,
  store_id string,
  register_id string,
  cashier_id string,
  customer_id string,
  txn_ts timestamp,
  txn_date date,
  txn_status string,
  currency_code string,
  subtotal_amount decimal(18, 2),
  discount_amount decimal(18, 2),
  tax_amount decimal(18, 2),
  total_amount decimal(18, 2),
  created_ts timestamp,
  updated_ts timestamp,
  CONSTRAINT fk_sales_hdr_customer FOREIGN KEY (customer_id) REFERENCES silver.dim_customer (customer_id),
  CONSTRAINT fk_sales_hdr_cashier FOREIGN KEY (cashier_id) REFERENCES silver.dim_cashier (cashier_id),
  CONSTRAINT fk_sales_hdr_register FOREIGN KEY (register_id) REFERENCES silver.dim_register (register_id),
  CONSTRAINT fk_sales_hdr_store FOREIGN KEY (store_id) REFERENCES silver.dim_store (store_id)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.constraints.chk_sales_hdr_amounts_nonneg = '(subtotal_amount IS NULL OR subtotal_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (total_amount IS NULL OR total_amount >= 0)', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.constraints.chk_sales_hdr_status = 'txn_status IS NULL OR txn_status IN (''''Completed'''',''''Void'''',''''Suspended'''')', delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-85ea30b5-2231-493a-ab6c-53f12e533fd9', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-7646b5c8-1dc3-4bba-8a11-9aab86d7f93c', delta.feature.invariants = 'supported');

ALTER TABLE silver.fct_sales_txn_header ADD CONSTRAINT chk_sales_hdr_amounts_nonneg CHECK ((subtotal_amount IS NULL OR subtotal_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (total_amount IS NULL OR total_amount >= 0));

ALTER TABLE silver.fct_sales_txn_header ADD CONSTRAINT chk_sales_hdr_status CHECK (txn_status IS NULL OR txn_status IN ('Completed','Void','Suspended'));
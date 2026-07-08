-- ************************************** silver.fct_sales_payment
CREATE TABLE silver.fct_sales_payment (
  sales_txn_id string NOT NULL,
  payment_line_number int NOT NULL,
  payment_method_id string,
  payment_provider string,
  authorization_code string,
  masked_account string,
  amount decimal(18, 2),
  currency_code string,
  created_ts timestamp,
  updated_ts timestamp,
  CONSTRAINT sales_payment_pk PRIMARY KEY (sales_txn_id, payment_line_number),
  CONSTRAINT fk_sales_pmt_method FOREIGN KEY (payment_method_id) REFERENCES silver.dim_payment_method (payment_method_id),
  CONSTRAINT fk_sales_pmt_header FOREIGN KEY (sales_txn_id) REFERENCES silver.fct_sales_txn_header (sales_txn_id)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-8231a91d-8a8a-436f-aec2-e29df5ee15d8', delta.constraints.chk_payment_amount_pos = 'amount IS NULL OR amount >= 0', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-29017bb3-1b1d-4644-aebd-b6e5c546aa44', delta.feature.invariants = 'supported');

ALTER TABLE silver.fct_sales_payment ADD CONSTRAINT chk_payment_amount_pos CHECK (amount IS NULL OR amount >= 0);
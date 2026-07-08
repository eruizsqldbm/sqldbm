-- ************************************** silver.fct_return
CREATE TABLE silver.fct_return (
  return_id string NOT NULL,
  original_sales_txn_id string,
  sales_txn_id string,
  store_id string,
  register_id string,
  cashier_id string,
  customer_id string,
  return_ts timestamp,
  return_date date,
  return_reason string,
  refund_amount decimal(18, 2),
  currency_code string,
  created_ts timestamp,
  updated_ts timestamp,
  CONSTRAINT fk_return_cashier FOREIGN KEY (cashier_id) REFERENCES silver.dim_cashier (cashier_id),
  CONSTRAINT fk_return_register FOREIGN KEY (register_id) REFERENCES silver.dim_register (register_id),
  CONSTRAINT fk_return_store FOREIGN KEY (store_id) REFERENCES silver.dim_store (store_id),
  CONSTRAINT fk_return_customer FOREIGN KEY (customer_id) REFERENCES silver.dim_customer (customer_id)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-6e659cf2-7c4d-4430-9a76-4ee6b02b698e', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-70db9fd8-ace3-43e0-8a60-d1dafa4790b6', delta.feature.invariants = 'supported');
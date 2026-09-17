-- ************************************** silver.fct_return
CREATE TABLE silver.fct_return (
  return_id string NOT NULL COMMENT 'Unique identifier for the return transaction.',
  original_sales_txn_id string COMMENT 'Identifier of the original sales transaction that is being returned.',
  sales_txn_id string COMMENT 'Identifier of the sales transaction associated with the return.',
  store_id string COMMENT 'Identifier of the store where the return was processed.',
  register_id string COMMENT 'Identifier of the cash register used to process the return.',
  cashier_id string COMMENT 'Identifier of the cashier who processed the return.',
  customer_id string COMMENT 'Identifier of the customer initiating the return.',
  return_ts timestamp COMMENT 'Date and time when the return transaction was processed.',
  return_date date COMMENT 'Date on which the return transaction was processed.',
  return_reason string COMMENT 'Reason provided by the customer for the return.',
  refund_amount decimal(18, 2) COMMENT 'Monetary amount refunded to the customer.',
  currency_code string COMMENT 'Currency code for the refund amount.',
  created_ts timestamp COMMENT 'Timestamp when the return record was created in the system.',
  updated_ts timestamp COMMENT 'Timestamp when the return record was last updated.',
  CONSTRAINT fk_return_customer FOREIGN KEY (customer_id) REFERENCES silver.dim_customer (customer_id),
  CONSTRAINT fk_return_store FOREIGN KEY (store_id) REFERENCES silver.dim_store (store_id),
  CONSTRAINT fk_return_register FOREIGN KEY (register_id) REFERENCES silver.dim_register (register_id),
  CONSTRAINT fk_return_cashier FOREIGN KEY (cashier_id) REFERENCES silver.dim_cashier (cashier_id)
)
USING DELTA
COMMENT 'Fact table containing return transaction records, including refund amounts, reasons, and references to original sales transactions and store operations.'
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-6e659cf2-7c4d-4430-9a76-4ee6b02b698e', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-70db9fd8-ace3-43e0-8a60-d1dafa4790b6', delta.feature.invariants = 'supported');
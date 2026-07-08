-- ************************************** silver.fct_sales_txn_line
CREATE TABLE silver.fct_sales_txn_line (
  sales_txn_id string NOT NULL,
  line_number int NOT NULL,
  product_id string,
  promotion_id string,
  tax_id string,
  line_type string,
  quantity decimal(18, 4),
  unit_price decimal(18, 4),
  extended_amount decimal(18, 2),
  discount_amount decimal(18, 2),
  tax_amount decimal(18, 2),
  net_amount decimal(18, 2),
  created_ts timestamp,
  updated_ts timestamp,
  CONSTRAINT sales_line_pk PRIMARY KEY (sales_txn_id, line_number),
  CONSTRAINT fk_sales_line_tax FOREIGN KEY (tax_id) REFERENCES silver.dim_tax (tax_id),
  CONSTRAINT fk_sales_line_promotion FOREIGN KEY (promotion_id) REFERENCES silver.dim_promotion (promotion_id),
  CONSTRAINT fk_sales_line_header FOREIGN KEY (sales_txn_id) REFERENCES silver.fct_sales_txn_header (sales_txn_id),
  CONSTRAINT fk_sales_line_product FOREIGN KEY (product_id) REFERENCES silver.dim_product (product_id)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.constraints.chk_sales_line_type = 'line_type IS NULL OR line_type IN (''''Sale'''',''''Return'''')', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-1dc0f48e-05bf-4905-9cb4-77b6f23e358d', delta.constraints.chk_sales_line_amounts = '(quantity IS NULL OR quantity <> 0) AND
  (unit_price IS NULL OR unit_price >= 0) AND
  (extended_amount IS NULL OR extended_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (net_amount IS NULL OR net_amount >= 0)', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-c759ff2e-2167-4e05-b275-79a1d8c09156', delta.feature.invariants = 'supported');

ALTER TABLE silver.fct_sales_txn_line ADD CONSTRAINT chk_sales_line_amounts CHECK ((quantity IS NULL OR quantity <> 0) AND
  (unit_price IS NULL OR unit_price >= 0) AND
  (extended_amount IS NULL OR extended_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (net_amount IS NULL OR net_amount >= 0));

ALTER TABLE silver.fct_sales_txn_line ADD CONSTRAINT chk_sales_line_type CHECK (line_type IS NULL OR line_type IN ('Sale','Return'));
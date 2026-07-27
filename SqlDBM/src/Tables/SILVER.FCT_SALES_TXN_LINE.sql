-- ************************************** SILVER.FCT_SALES_TXN_LINE
CREATE TABLE SILVER.FCT_SALES_TXN_LINE (
  SALES_TXN_ID string NOT NULL,
  LINE_NUMBER int NOT NULL,
  PRODUCT_ID string,
  PROMOTION_ID string,
  TAX_ID string,
  LINE_TYPE string,
  QUANTITY decimal(18, 4),
  UNIT_PRICE decimal(18, 4),
  EXTENDED_AMOUNT decimal(18, 2),
  DISCOUNT_AMOUNT decimal(18, 2),
  TAX_AMOUNT decimal(18, 2),
  NET_AMOUNT decimal(18, 2),
  CREATED_TS timestamp,
  UPDATED_TS timestamp,
  CONSTRAINT SALES_LINE_PK PRIMARY KEY (SALES_TXN_ID, LINE_NUMBER),
  CONSTRAINT FK_SALES_LINE_PROMOTION FOREIGN KEY (PROMOTION_ID) REFERENCES SILVER.DIM_PROMOTION (PROMOTION_ID),
  CONSTRAINT FK_SALES_LINE_HEADER FOREIGN KEY (SALES_TXN_ID) REFERENCES SILVER.FCT_SALES_TXN_HEADER (SALES_TXN_ID),
  CONSTRAINT FK_SALES_LINE_TAX FOREIGN KEY (TAX_ID) REFERENCES SILVER.DIM_TAX (TAX_ID),
  CONSTRAINT FK_SALES_LINE_PRODUCT FOREIGN KEY (PRODUCT_ID) REFERENCES SILVER.DIM_PRODUCT (PRODUCT_ID)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.constraints.chk_sales_line_type = 'line_type IS NULL OR line_type IN (''''Sale'''',''''Return'''')', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-1dc0f48e-05bf-4905-9cb4-77b6f23e358d', delta.constraints.chk_sales_line_amounts = '(quantity IS NULL OR quantity <> 0) AND
  (unit_price IS NULL OR unit_price >= 0) AND
  (extended_amount IS NULL OR extended_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (net_amount IS NULL OR net_amount >= 0)', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-c759ff2e-2167-4e05-b275-79a1d8c09156', delta.feature.invariants = 'supported');

ALTER TABLE SILVER.FCT_SALES_TXN_LINE ADD CONSTRAINT CHK_SALES_LINE_AMOUNTS CHECK ((quantity IS NULL OR quantity <> 0) AND
  (unit_price IS NULL OR unit_price >= 0) AND
  (extended_amount IS NULL OR extended_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (net_amount IS NULL OR net_amount >= 0));

ALTER TABLE SILVER.FCT_SALES_TXN_LINE ADD CONSTRAINT CHK_SALES_LINE_TYPE CHECK (line_type IS NULL OR line_type IN ('Sale','Return'));
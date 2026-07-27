-- ************************************** Silver.FctSalesTxnLine_T
CREATE TABLE Silver.FctSalesTxnLine_T (
  SalesTxnId string NOT NULL,
  LineNumber int NOT NULL,
  ProductId string,
  PromotionId string,
  TaxId string,
  LineType string,
  Quantity decimal(18, 4),
  UnitPrice decimal(18, 4),
  ExtendedAmount decimal(18, 2),
  DiscountAmount decimal(18, 2),
  TaxAmount decimal(18, 2),
  NetAmount decimal(18, 2),
  CreatedTs timestamp,
  UpdatedTs timestamp,
  last_updated timestamp NOT NULL,
  CONSTRAINT SalesLinePk PRIMARY KEY (SalesTxnId, LineNumber),
  CONSTRAINT FkSalesLineProduct FOREIGN KEY (ProductId) REFERENCES Silver.DimProduct_T (ProductId),
  CONSTRAINT FkSalesLineHeader FOREIGN KEY (SalesTxnId) REFERENCES Silver.FctSalesTxnHeader_T (SalesTxnId),
  CONSTRAINT FkSalesLinePromotion FOREIGN KEY (PromotionId) REFERENCES Silver.DimPromotion_T (PromotionId),
  CONSTRAINT FkSalesLineTax FOREIGN KEY (TaxId) REFERENCES Silver.DimTax_T (TaxId)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.constraints.chk_sales_line_type = 'line_type IS NULL OR line_type IN (''''Sale'''',''''Return'''')', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-1dc0f48e-05bf-4905-9cb4-77b6f23e358d', delta.constraints.chk_sales_line_amounts = '(quantity IS NULL OR quantity <> 0) AND
  (unit_price IS NULL OR unit_price >= 0) AND
  (extended_amount IS NULL OR extended_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (net_amount IS NULL OR net_amount >= 0)', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-c759ff2e-2167-4e05-b275-79a1d8c09156', delta.feature.invariants = 'supported');

ALTER TABLE Silver.FctSalesTxnLine_T ADD CONSTRAINT ChkSalesLineAmounts CHECK ((quantity IS NULL OR quantity <> 0) AND
  (unit_price IS NULL OR unit_price >= 0) AND
  (extended_amount IS NULL OR extended_amount >= 0) AND
  (discount_amount IS NULL OR discount_amount >= 0) AND
  (tax_amount IS NULL OR tax_amount >= 0) AND
  (net_amount IS NULL OR net_amount >= 0));

ALTER TABLE Silver.FctSalesTxnLine_T ADD CONSTRAINT ChkSalesLineType CHECK (line_type IS NULL OR line_type IN ('Sale','Return'));
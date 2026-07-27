-- ************************************** Silver.FctSalesPayment_T
CREATE TABLE Silver.FctSalesPayment_T (
  SalesTxnId string NOT NULL,
  PaymentLineNumber int NOT NULL,
  PaymentMethodId string,
  PaymentProvider string,
  AuthorizationCode string,
  MaskedAccount string,
  Amount decimal(18, 2),
  CurrencyCode string,
  CreatedTs timestamp,
  UpdatedTs timestamp,
  last_updated timestamp NOT NULL,
  CONSTRAINT SalesPaymentPk PRIMARY KEY (SalesTxnId, PaymentLineNumber),
  CONSTRAINT FkSalesPmtHeader FOREIGN KEY (SalesTxnId) REFERENCES Silver.FctSalesTxnHeader_T (SalesTxnId),
  CONSTRAINT FkSalesPmtMethod FOREIGN KEY (PaymentMethodId) REFERENCES Silver.DimPaymentMethod_T (PaymentMethodId)
)
USING DELTA
TBLPROPERTIES (delta.parquet.compression.codec = 'zstd', delta.minWriterVersion = 7, delta.feature.rowTracking = 'supported', delta.feature.appendOnly = 'supported', delta.enableDeletionVectors = true, delta.minReaderVersion = 3, delta.feature.domainMetadata = 'supported', delta.checkpoint.writeStatsAsStruct = true, delta.feature.checkConstraints = 'supported', delta.enableRowTracking = true, delta.checkpoint.writeStatsAsJson = false, delta.feature.deletionVectors = 'supported', delta.rowTracking.materializedRowCommitVersionColumnName = '_row-commit-version-col-8231a91d-8a8a-436f-aec2-e29df5ee15d8', delta.constraints.chk_payment_amount_pos = 'amount IS NULL OR amount >= 0', delta.rowTracking.materializedRowIdColumnName = '_row-id-col-29017bb3-1b1d-4644-aebd-b6e5c546aa44', delta.feature.invariants = 'supported');

ALTER TABLE Silver.FctSalesPayment_T ADD CONSTRAINT ChkPaymentAmountPos CHECK (amount IS NULL OR amount >= 0);
-- ************************************** POS.FACT_SALES
CREATE TABLE POS.FACT_SALES (
  FACT_SALES_KEY bigint NOT NULL CONSTRAINT PK_122 PRIMARY KEY COMMENT 'Surrogate primary key for sales transaction line',
  DATE_KEY int NOT NULL COMMENT 'Foreign key to DIM_DATE',
  STORE_KEY bigint NOT NULL COMMENT 'Foreign key to DIM_STORE',
  PRODUCT_KEY bigint NOT NULL COMMENT 'Foreign key to DIM_PRODUCT',
  CUSTOMER_KEY bigint COMMENT 'Foreign key to DIM_CUSTOMER; NULL for anonymous/cash transactions',
  TRANSACTION_ID_BK varchar(100) NOT NULL COMMENT 'Natural key to source system transaction',
  SALES_QTY int NOT NULL COMMENT 'Units sold on this line item',
  SALES_AMT decimal(18,2) NOT NULL COMMENT 'Gross revenue before discounts and tax',
  DISCOUNT_AMT decimal(18,2) NOT NULL COMMENT 'Total discounts applied to this line item',
  TAX_AMT decimal(18,2) NOT NULL COMMENT 'Sales tax on this line item',
  NET_SALES_AMT decimal(18,2) NOT NULL COMMENT 'Net revenue: SALES_AMT - DISCOUNT_AMT + TAX_AMT',
  LOAD_TS timestamp NOT NULL COMMENT 'Timestamp of data load into warehouse',
  CUSTOMER_ID decimal(10,0) NOT NULL COMMENT 'A unique identifier for each customer.',
  FROM_DTS timestamp NOT NULL,
  CONSTRAINT FK_102 FOREIGN KEY (CUSTOMER_ID, FROM_DTS) REFERENCES POS.DIM_CUSTOMER (CUSTOMER_ID, FROM_DTS),
  CONSTRAINT FK_99 FOREIGN KEY (DATE_KEY) REFERENCES POS.DIM_DATE (DATE_KEY),
  CONSTRAINT FK_101 FOREIGN KEY (PRODUCT_KEY) REFERENCES POS.DIM_PRODUCT (PRODUCT_KEY),
  CONSTRAINT FK_100 FOREIGN KEY (STORE_KEY) REFERENCES POS.DIM_STORE (STORE_KEY)
)
COMMENT 'One row per product line item on a sales transaction. Grain: transaction date, store, product, customer.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
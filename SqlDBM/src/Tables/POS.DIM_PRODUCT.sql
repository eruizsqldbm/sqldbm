-- ************************************** POS.DIM_PRODUCT
CREATE TABLE POS.DIM_PRODUCT (
  PRODUCT_KEY bigint NOT NULL CONSTRAINT PK_125 PRIMARY KEY COMMENT 'Surrogate primary key',
  PRODUCT_ID_BK varchar(50) NOT NULL COMMENT 'Business key: natural product identifier from source system',
  PRODUCT_NAME varchar(255) NOT NULL COMMENT 'Product description or display name',
  SKU varchar(50) NOT NULL COMMENT 'Stock keeping unit. PROPOSED PII TAG: sensitive if SKU identifies restricted/medical items.',
  CATEGORY varchar(100) NOT NULL COMMENT 'Top-level product category',
  SUBCATEGORY varchar(100) COMMENT 'Sub-category or product line',
  SUPPLIER_ID varchar(50) COMMENT 'Vendor or supplier code',
  UNIT_COST_AMT decimal(18,2) NOT NULL COMMENT 'Cost per unit at time of record',
  LIST_PRICE_AMT decimal(18,2) NOT NULL COMMENT 'Recommended retail price at time of record',
  EFFECTIVE_DT date NOT NULL COMMENT 'SCD Type 2: row effective from this date',
  EXPIRY_DT date COMMENT 'SCD Type 2: row expires on this date; NULL for current record',
  CURRENT_FLG boolean NOT NULL COMMENT 'SCD Type 2: 1 if current version, 0 if historical'
)
COMMENT 'Slowly Changing Dimension Type 2: product master data with category, SKU, and pricing. One row per product version.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
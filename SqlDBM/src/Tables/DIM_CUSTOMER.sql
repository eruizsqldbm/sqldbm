-- ************************************** DIM_CUSTOMER
CREATE TABLE DIM_CUSTOMER (
  CUSTOMER_KEY bigint NOT NULL COMMENT 'Surrogate primary key',
  CUSTOMER_ID_BK varchar(50) NOT NULL COMMENT 'Business key: natural customer identifier from source system',
  CUSTOMER_NAME varchar(255) NOT NULL COMMENT 'Customer full name',
  EMAIL varchar(255) COMMENT 'Email address',
  PHONE varchar(20) COMMENT 'Phone number',
  LOYALTY_MEMBER_FLG boolean NOT NULL COMMENT 'Flag: 1 if enrolled in loyalty program, 0 otherwise',
  EFFECTIVE_DT date NOT NULL COMMENT 'SCD Type 2: row effective from this date',
  EXPIRY_DT date COMMENT 'SCD Type 2: row expires on this date; NULL for current record',
  CURRENT_FLG boolean NOT NULL COMMENT 'SCD Type 2: 1 if current version, 0 if historical'
)
COMMENT 'Slowly Changing Dimension Type 2: customer master data with loyalty and contact info. One row per customer version. Nullable in FACT_SALES for anonymous transactions.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
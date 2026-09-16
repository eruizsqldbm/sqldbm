-- ************************************** POS.DIM_STORE
CREATE TABLE POS.DIM_STORE (
  STORE_KEY bigint NOT NULL CONSTRAINT PK_124 PRIMARY KEY COMMENT 'Surrogate primary key',
  STORE_ID_BK varchar(50) NOT NULL COMMENT 'Business key: natural store identifier from source system',
  STORE_NAME varchar(200) NOT NULL COMMENT 'Merchant name or store description',
  ADDRESS varchar(255) NOT NULL COMMENT 'PROPOSED PII TAG: Street address may identify physical location tied to individuals.',
  CITY varchar(100) NOT NULL COMMENT 'PROPOSED PII TAG: City location.',
  STATE varchar(50) NOT NULL COMMENT 'State or province code',
  ZIP varchar(20) NOT NULL COMMENT 'PROPOSED PII TAG: Postal code.',
  REGION varchar(100) NOT NULL COMMENT 'Geographic region or territory',
  DISTRICT varchar(100) COMMENT 'Sales district or area manager territory',
  STORE_OPEN_DT date NOT NULL COMMENT 'Store opening date',
  STORE_CLOSE_DT date COMMENT 'Store closing date; NULL if still operating',
  EFFECTIVE_DT date NOT NULL COMMENT 'SCD Type 2: row effective from this date',
  EXPIRY_DT date COMMENT 'SCD Type 2: row expires on this date; NULL for current record',
  CURRENT_FLG boolean NOT NULL COMMENT 'SCD Type 2: 1 if current version, 0 if historical'
)
COMMENT 'Slowly Changing Dimension Type 2: store master data with location, region, and operational dates. One row per store version.'
TBLPROPERTIES (delta.columnMapping.mode = 'name');
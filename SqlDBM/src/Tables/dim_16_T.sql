-- ************************************** dim_16_T
CREATE TABLE dim_16_T (
  from_dts timestamp_ntz(9) NOT NULL CONSTRAINT Pk13 PRIMARY KEY,
  to_dts timestamp_ntz(9) NOT NULL,
  last_updated timestamp NOT NULL,
  load_dts timestamp_ntz(9) NOT NULL
)
TBLPROPERTIES (delta.columnMapping.mode = 'name');
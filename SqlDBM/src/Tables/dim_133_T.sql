-- ************************************** dim_133_T
CREATE TABLE dim_133_T (
  from_dts timestamp_ntz(9) NOT NULL CONSTRAINT PK_126 PRIMARY KEY,
  to_dts timestamp_ntz(9) NOT NULL,
  load_dts timestamp_ntz(9) NOT NULL
)
TBLPROPERTIES (delta.columnMapping.mode = 'name');
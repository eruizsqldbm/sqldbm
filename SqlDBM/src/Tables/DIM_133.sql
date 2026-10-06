-- ************************************** DIM_133
CREATE TABLE DIM_133 (
  FROM_DTS timestamp_ntz(9) NOT NULL CONSTRAINT PK_126 PRIMARY KEY,
  TO_DTS timestamp_ntz(9) NOT NULL,
  LOAD_DTS timestamp_ntz(9) NOT NULL
)
TBLPROPERTIES (delta.columnMapping.mode = 'name');
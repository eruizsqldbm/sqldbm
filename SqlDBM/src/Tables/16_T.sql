-- ************************************** `16_T`
CREATE TABLE `16_T` (
  last_updated timestamp NOT NULL,
  Col2 variant NOT NULL
)
TBLPROPERTIES (delta.columnMapping.mode = 'name');
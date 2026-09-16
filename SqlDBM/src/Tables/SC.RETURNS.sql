-- ************************************** SC.RETURNS
CREATE TABLE SC.RETURNS (
  RETURN_ID string NOT NULL CONSTRAINT PK_RETURNS PRIMARY KEY COMMENT 'Unique identifier for each return record.',
  SALES_ORDER_ID string COMMENT 'References the sales order associated with the return.',
  RETURN_DATE date COMMENT 'The date when the return was initiated.',
  STATUS string(20) COMMENT 'The current status of the return (e.g., Pending, Completed).',
  REASON string(255) COMMENT 'The reason for the return, such as "Defective product" or "Wrong item delivered".',
  CONSTRAINT SALES_ORDER_ID FOREIGN KEY (SALES_ORDER_ID) REFERENCES SC.SALES_ORDER (SALES_ORDER_ID)
)
COMMENT 'Tracks customer returns, including the associated sales order and reasons for the return.';
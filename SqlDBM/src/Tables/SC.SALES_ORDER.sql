-- ************************************** SC.SALES_ORDER
CREATE TABLE SC.SALES_ORDER (
  SALES_ORDER_ID string NOT NULL CONSTRAINT PK_SALES_ORDER PRIMARY KEY COMMENT 'Unique identifier for each sales order.',
  ORDER_DATE date COMMENT 'The date when the order was placed.',
  STATUS string(20) COMMENT 'The current status of the sales order (e.g., Pending, Shipped).',
  TOTAL_AMOUNT decimal(10,0) COMMENT 'The total monetary value of the order.'
)
COMMENT 'Stores customer orders, including details about order status and value.';
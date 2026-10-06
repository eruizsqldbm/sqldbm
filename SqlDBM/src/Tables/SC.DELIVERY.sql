-- ************************************** SC.DELIVERY
CREATE TABLE SC.DELIVERY (
  DELIVERY_ID string NOT NULL CONSTRAINT PK_DELIVERY PRIMARY KEY COMMENT 'Unique identifier for each delivery record.',
  SALES_ORDER_ID string COMMENT 'References the sales order associated with the delivery.',
  DELIVERY_DATE date COMMENT 'The date when the delivery occurred or is scheduled.',
  STATUS string(20) COMMENT 'The current status of the delivery (e.g., In Transit, Delivered).',
  CONSTRAINT SALES_ORDER_ID FOREIGN KEY (SALES_ORDER_ID) REFERENCES SC.SALES_ORDER (SALES_ORDER_ID)
)
COMMENT 'Tracks deliveries associated with sales orders, including status and dates.';
-- ************************************** POS.ORDER_T
CREATE TABLE POS.ORDER_T (
  ORDER_ID decimal(10,0) NOT NULL CONSTRAINT PK_ORDER PRIMARY KEY COMMENT 'A unique identifier for each order.',
  LOCATION_ID decimal(10,0) COMMENT 'The location where the order was placed, linked to the Location table.',
  ORDER_DATE date COMMENT 'The date when the order was placed.',
  TOTAL_AMOUNT decimal(15, 2) COMMENT 'The total value of the order.',
  STATUS string COMMENT 'The status of the order (e.g., "Completed", "Pending").',
  CONSTRAINT LOCATION_ID FOREIGN KEY (LOCATION_ID) REFERENCES POS.LOCATION_T (LOCATION_ID)
)
COMMENT 'Table stores the details for customer orders placed at the business.';
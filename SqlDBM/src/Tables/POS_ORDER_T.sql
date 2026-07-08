-- ************************************** POS_ORDER_T
CREATE TABLE POS_ORDER_T (
  ORDER_ID decimal(10,0) NOT NULL CONSTRAINT PK_ORDER PRIMARY KEY COMMENT 'A unique identifier for each order.',
  CUSS_ID decimal(10,0) COMMENT 'The customer who made the order, linked to the Customer table.',
  LOCATION_ID decimal(10,0) COMMENT 'The location where the order was made, linked to the Location table.',
  ORDER_DATE date COMMENT 'The date when the order was placed.',
  TOTAL_AMOUNT decimal(10,0) COMMENT 'The total amount of the order.',
  ITEMS string COMMENT 'A JSON representation of the items in the order.',
  STATUS string COMMENT 'The status of the order (e.g., "Pending", "Delivered").',
  CONSTRAINT CUSS_ID FOREIGN KEY (CUSS_ID) REFERENCES POS.CUSS_T (CUSS_ID),
  CONSTRAINT LOCATION_ID FOREIGN KEY (LOCATION_ID) REFERENCES POS.LOCATION_T (LOCATION_ID)
)
COMMENT 'Table stores details about customer orders made at various locations.';
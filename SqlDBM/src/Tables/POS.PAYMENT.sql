-- ************************************** POS.PAYMENT
CREATE TABLE POS.PAYMENT (
  PAYMENT_ID decimal(10,0) NOT NULL CONSTRAINT PK_PAYMENT PRIMARY KEY COMMENT 'A unique identifier for each payment.',
  ORDER_ID decimal(10,0) COMMENT 'The order for which the payment was made, linked to the Order table.',
  PAYMENT_TYPE string COMMENT 'The type of payment (e.g., "Credit Card", "Cash").',
  AMOUNT decimal(15, 2) COMMENT 'The amount paid.',
  PAYMENT_DATE date COMMENT 'The date when the payment was made.',
  ORDERID decimal(10,0) NOT NULL COMMENT 'The ''OrderID'' column contains data related to ''orderid''. This column likely represents an identifier.',
  CONSTRAINT ORDER_ID FOREIGN KEY (ORDER_ID) REFERENCES POS.`ORDER` (ORDER_ID),
  CONSTRAINT FK_89 FOREIGN KEY (ORDERID) REFERENCES SUPPLYCHAIN.ORDERS (ORDERID)
)
COMMENT 'Table stores information about payments made for orders.';
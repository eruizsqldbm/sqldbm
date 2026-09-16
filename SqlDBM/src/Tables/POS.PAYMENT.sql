-- ************************************** POS.PAYMENT
CREATE TABLE POS.PAYMENT (
  PAYMENT_ID decimal(10,0) NOT NULL CONSTRAINT PK_PAYMENT PRIMARY KEY COMMENT 'A unique identifier for each payment.',
  ORDER_ID decimal(10,0) COMMENT 'The order for which the payment was made, linked to the Order table.',
  PAYMENT_TYPE string COMMENT 'The type of payment (e.g., "Credit Card", "Cash").',
  AMOUNT decimal(15, 2) COMMENT 'The amount paid.',
  PAYMENT_DATE date COMMENT 'The date when the payment was made.',
  CONSTRAINT ORDER_ID FOREIGN KEY (ORDER_ID) REFERENCES POS.`ORDER` (ORDER_ID)
)
COMMENT 'Table stores information about payments made for orders.';
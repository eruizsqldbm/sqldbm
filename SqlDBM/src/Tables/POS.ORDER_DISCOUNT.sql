-- ************************************** POS.ORDER_DISCOUNT
CREATE TABLE POS.ORDER_DISCOUNT (
  ORDER_DISCOUNT_ID decimal(10,0) NOT NULL CONSTRAINT PK_ORDER_DISCOUNT PRIMARY KEY COMMENT 'A unique identifier for the order discount.',
  ORDER_ID decimal(10,0) COMMENT 'The order to which the discount is applied, linked to the Order table.',
  DISCOUNT_ID decimal(10,0) COMMENT 'The discount applied to the order, linked to the Discount table',
  CONSTRAINT DISCOUNT_ID FOREIGN KEY (DISCOUNT_ID) REFERENCES POS.DISCOUNT (DISCOUNT_ID),
  CONSTRAINT ORDER_ID FOREIGN KEY (ORDER_ID) REFERENCES POS.`ORDER` (ORDER_ID)
)
COMMENT 'Table stores discounts applied to individual orders.';
-- ************************************** SC.PURCHASE_ORDER_1_T
CREATE TABLE SC.PURCHASE_ORDER_1_T (
  PURCHASE_ORDER_ID string NOT NULL CONSTRAINT PK_PURCHASE_ORDER PRIMARY KEY COMMENT 'Unique identifier for each purchase order.',
  SUPPLIER_ID string COMMENT 'References the supplier from whom the order was placed.',
  ORDER_DATE date COMMENT 'The date when the purchase order was created.',
  STATUS string(20) COMMENT 'The current status of the purchase order (e.g., Pending, Received).',
  TOTAL_AMOUNT decimal(10,0) COMMENT 'The total monetary value of the purchase order.',
  CONSTRAINT SUPPLIER_ID FOREIGN KEY (SUPPLIER_ID) REFERENCES SC.SUPPLIER_1_T (SUPPLIER_ID)
)
COMMENT 'Stores purchase orders placed with suppliers, including order status and total value.';
-- ************************************** POS.PURCHASE_ORDER
CREATE TABLE POS.PURCHASE_ORDER (
  PURCHASE_ORDER_ID decimal(10,0) NOT NULL CONSTRAINT PK_PURCHASE_ORDER PRIMARY KEY COMMENT 'A unique identifier for each purchase order.',
  SUPPLIER_ID decimal(10,0) COMMENT 'The supplier from whom the order was made, linked to the Supplier table.',
  ORDER_DATE date COMMENT 'The date when the purchase order was created.',
  TOTAL_AMOUNT decimal(15, 2) COMMENT 'The total value of the purchase order.',
  STATUS string COMMENT 'The status of the purchase order (e.g., "Pending", "Completed").',
  CONSTRAINT SUPPLIER_ID FOREIGN KEY (SUPPLIER_ID) REFERENCES POS.SUPPLIER (SUPPLIER_ID),
  CONSTRAINT FK_105 FOREIGN KEY (SUPPLIER_ID) REFERENCES POS.SUPPLIER (SUPPLIER_ID)
)
COMMENT 'Table stores purchase order details from suppliers, including order date and total amount.';
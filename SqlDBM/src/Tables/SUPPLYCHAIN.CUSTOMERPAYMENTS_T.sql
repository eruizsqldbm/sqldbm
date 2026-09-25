-- ************************************** SUPPLYCHAIN.CUSTOMERPAYMENTS_T
CREATE TABLE SUPPLYCHAIN.CUSTOMERPAYMENTS_T (
  PAYMENTDATE date NOT NULL COMMENT 'The ''PaymentDate'' column contains data related to ''paymentdate''. This column stores information related to dates or times.',
  AMOUNT decimal(15,2) NOT NULL COMMENT 'The ''Amount'' column contains data related to ''amount''. This column represents a numeric value, likely related to amounts or prices.',
  PAYMENTMETHOD string(50) COMMENT 'The ''PaymentMethod'' column contains data related to ''paymentmethod''.',
  PAYMENTREFERENCE string(100) COMMENT 'The ''PaymentReference'' column contains data related to ''paymentreference''.',
  CUSTOMERID decimal(10,0) NOT NULL COMMENT 'The ''CustomerID'' column contains data related to ''customerid''. This column likely represents an identifier.',
  PAYMENTID decimal(10,0) NOT NULL COMMENT 'The ''PaymentID'' column contains data related to ''paymentid''. This column likely represents an identifier.',
  CONSTRAINT FK_17 FOREIGN KEY (PAYMENTID) REFERENCES SUPPLYCHAIN.SUPPLIERPAYMENTS_T (PAYMENTID),
  CONSTRAINT FK_7 FOREIGN KEY (CUSTOMERID) REFERENCES SUPPLYCHAIN.CUSS_2_T (CUSTOMERID)
);
-- ************************************** SUPPLYCHAIN.SUPPLIERPAYMENTS_T
CREATE TABLE SUPPLYCHAIN.SUPPLIERPAYMENTS_T (
  PAYMENTID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''PaymentID'' column contains data related to ''paymentid''. This column likely represents an identifier.',
  PAYMENTDATE date NOT NULL COMMENT 'The ''PaymentDate'' column contains data related to ''paymentdate''. This column stores information related to dates or times.',
  AMOUNT decimal(15,2) NOT NULL COMMENT 'The ''Amount'' column contains data related to ''amount''. This column represents a numeric value, likely related to amounts or prices.',
  PAYMENTMETHOD string(50) COMMENT 'The ''PaymentMethod'' column contains data related to ''paymentmethod''.',
  PAYMENTREFERENCE string(100) COMMENT 'The ''PaymentReference'' column contains data related to ''paymentreference''.',
  SUPPLIERID decimal(10,0) NOT NULL COMMENT 'The ''SupplierID'' column contains data related to ''supplierid''. This column likely represents an identifier.',
  CONSTRAINT FK_15 FOREIGN KEY (SUPPLIERID) REFERENCES SUPPLYCHAIN.SUPPLIER_2_T (SUPPLIERID)
);
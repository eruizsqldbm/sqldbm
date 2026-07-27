-- ************************************** SUPPLYCHAIN.ORDERS
CREATE TABLE SUPPLYCHAIN.ORDERS (
  ORDERID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''OrderID'' column contains data related to ''orderid''. This column likely represents an identifier.',
  SHIPMENTID decimal(10,0) NOT NULL COMMENT 'The ''ShipmentID'' column contains data related to ''shipmentid''. This column likely represents an identifier.',
  CUSTOMERID decimal(10,0) NOT NULL COMMENT 'The ''CustomerID'' column contains data related to ''customerid''. This column likely represents an identifier.',
  ORDERDATE date NOT NULL COMMENT 'The ''OrderDate'' column contains data related to ''orderdate''. This column stores information related to dates or times.',
  REQUIREDDATE date NOT NULL COMMENT 'The ''RequiredDate'' column contains data related to ''requireddate''. This column stores information related to dates or times.',
  SHIPPEDDATE date COMMENT 'The ''ShippedDate'' column contains data related to ''shippeddate''. This column stores information related to dates or times.',
  STATUS string(50) NOT NULL COMMENT 'The ''Status'' column contains data related to ''status''. This column contains status information.',
  TOTALAMOUNT decimal(15,2) COMMENT 'The ''TotalAmount'' column contains data related to ''totalamount''. This column represents a numeric value, likely related to amounts or prices.',
  CONSTRAINT FK_19 FOREIGN KEY (SHIPMENTID) REFERENCES SUPPLYCHAIN.SHIPMENT (SHIPMENTID),
  CONSTRAINT FK_6 FOREIGN KEY (CUSTOMERID) REFERENCES SUPPLYCHAIN.CUSS_2 (CUSTOMERID)
);
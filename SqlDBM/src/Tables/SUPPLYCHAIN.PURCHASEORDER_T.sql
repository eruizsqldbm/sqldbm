-- ************************************** SUPPLYCHAIN.PURCHASEORDER_T
CREATE TABLE SUPPLYCHAIN.PURCHASEORDER_T (
  PURCHASEORDERID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''PurchaseOrderID'' column contains data related to ''purchaseorderid''. This column likely represents an identifier.',
  ORDERDATE date NOT NULL COMMENT 'The ''OrderDate'' column contains data related to ''orderdate''. This column stores information related to dates or times.',
  DELIVERYDATE date COMMENT 'The ''DeliveryDate'' column contains data related to ''deliverydate''. This column stores information related to dates or times.',
  STATUS string(50) NOT NULL COMMENT 'The ''Status'' column contains data related to ''status''. This column contains status information.',
  TOTALAMOUNT decimal(15,2) COMMENT 'The ''TotalAmount'' column contains data related to ''totalamount''. This column represents a numeric value, likely related to amounts or prices.',
  SUPPLIERID decimal(10,0) NOT NULL COMMENT 'The ''SupplierID'' column contains data related to ''supplierid''. This column likely represents an identifier.',
  CONSTRAINT FK_16 FOREIGN KEY (SUPPLIERID) REFERENCES SUPPLYCHAIN.SUPPLIER_2_T (SUPPLIERID)
);
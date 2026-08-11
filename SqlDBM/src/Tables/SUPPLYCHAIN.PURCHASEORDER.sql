-- ************************************** SUPPLYCHAIN.PURCHASEORDER
CREATE TABLE SUPPLYCHAIN.PURCHASEORDER (
  PURCHASEORDERID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''PurchaseOrderID'' column contains data related to ''purchaseorderid''. This column likely represents an identifier.',
  ORDERDATE date NOT NULL COMMENT 'The ''OrderDate'' column contains data related to ''orderdate''. This column stores information related to dates or times.',
  DELIVERYDATE date COMMENT 'The ''DeliveryDate'' column contains data related to ''deliverydate''. This column stores information related to dates or times.',
  STATUS string(50) NOT NULL COMMENT 'The ''Status'' column contains data related to ''status''. This column contains status information.',
  TOTALAMOUNT decimal(15,2) COMMENT 'The ''TotalAmount'' column contains data related to ''totalamount''. This column represents a numeric value, likely related to amounts or prices.',
  SUPPLIERID decimal(10,0) NOT NULL COMMENT 'The ''SupplierID'' column contains data related to ''supplierid''. This column likely represents an identifier.',
  SUPPLIER_ID decimal(10,0) NOT NULL COMMENT 'A unique identifier for each supplier',
  PURCHASE_ORDER_ID string NOT NULL COMMENT 'Unique identifier for each purchase order.',
  CONSTRAINT FK_16 FOREIGN KEY (SUPPLIERID) REFERENCES SUPPLYCHAIN.SUPPLIER_2 (SUPPLIERID),
  CONSTRAINT FK_103 FOREIGN KEY (SUPPLIER_ID) REFERENCES POS.SUPPLIER (SUPPLIER_ID),
  CONSTRAINT FK_139 FOREIGN KEY (PURCHASE_ORDER_ID) REFERENCES SC.PURCHASE_ORDER_1 (PURCHASE_ORDER_ID)
);
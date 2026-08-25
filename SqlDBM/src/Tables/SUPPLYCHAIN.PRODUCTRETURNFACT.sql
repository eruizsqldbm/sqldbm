-- ************************************** SUPPLYCHAIN.PRODUCTRETURNFACT
CREATE TABLE SUPPLYCHAIN.PRODUCTRETURNFACT (
  RETURNID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''ReturnID'' column contains data related to ''returnid''. This column likely represents an identifier.',
  ORDERID decimal(10,0) NOT NULL COMMENT 'The ''OrderID'' column contains data related to ''orderid''. This column likely represents an identifier.',
  PRODUCTKEY decimal(10,0) COMMENT 'The ''ProductKey'' column contains data related to ''productkey''.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  QUANTITYRETURNED decimal(10,0) COMMENT 'The ''QuantityReturned'' column contains data related to ''quantityreturned''.',
  RETURNREASON string(255) COMMENT 'The ''ReturnReason'' column contains data related to ''returnreason''.',
  CONSTRAINT FK_14 FOREIGN KEY (ORDERID) REFERENCES SUPPLYCHAIN.ORDERS (ORDERID)
);
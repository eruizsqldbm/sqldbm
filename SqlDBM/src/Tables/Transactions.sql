-- ************************************** Transactions
CREATE TABLE Transactions (
  Customerid int NOT NULL,
  CONSTRAINT FK_34 FOREIGN KEY (Customerid) REFERENCES Customer (Customerid)
)
TBLPROPERTIES (delta.columnMapping.mode = 'name');
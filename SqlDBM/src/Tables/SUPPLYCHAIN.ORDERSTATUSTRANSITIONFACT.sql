-- ************************************** SUPPLYCHAIN.ORDERSTATUSTRANSITIONFACT
CREATE TABLE SUPPLYCHAIN.ORDERSTATUSTRANSITIONFACT (
  TRANSITIONID decimal(10,0) NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''TransitionID'' column contains data related to ''transitionid''. This column likely represents an identifier.',
  CANCELLATIONREASONKEY decimal(10,0) NOT NULL COMMENT 'The ''CancellationReasonKey'' column contains data related to ''cancellationreasonkey''.',
  ORDERID decimal(10,0) NOT NULL COMMENT 'The ''OrderID'' column contains data related to ''orderid''. This column likely represents an identifier.',
  OLDSTATUSKEY decimal(10,0) COMMENT 'The ''OldStatusKey'' column contains data related to ''oldstatuskey''. This column contains status information.',
  NEWSTATUSKEY decimal(10,0) COMMENT 'The ''NewStatusKey'' column contains data related to ''newstatuskey''. This column contains status information.',
  TRANSITIONDATE date COMMENT 'The ''TransitionDate'' column contains data related to ''transitiondate''. This column stores information related to dates or times.',
  TRANSITIONTIME timestamp COMMENT 'The ''TransitionTime'' column contains data related to ''transitiontime''. This column stores information related to dates or times.',
  WAREHOUSEOPERATIONID decimal(10,0) NOT NULL COMMENT 'The unique identifier for warehouse operation.',
  CONSTRAINT PK_1 PRIMARY KEY (TRANSITIONID, CANCELLATIONREASONKEY),
  CONSTRAINT FK_93 FOREIGN KEY (WAREHOUSEOPERATIONID) REFERENCES SUPPLYCHAIN.WAREHOUSEOPERATIONSFACT (WAREHOUSEOPERATIONID),
  CONSTRAINT FK_5 FOREIGN KEY (ORDERID) REFERENCES SUPPLYCHAIN.ORDERS (ORDERID),
  CONSTRAINT FK_92 FOREIGN KEY (CANCELLATIONREASONKEY) REFERENCES SUPPLYCHAIN.ORDERCANCELLATIONREASONDIM (CANCELLATIONREASONKEY),
  CONSTRAINT FK_4 FOREIGN KEY (CANCELLATIONREASONKEY) REFERENCES SUPPLYCHAIN.ORDERCANCELLATIONREASONDIM (CANCELLATIONREASONKEY)
);
-- ************************************** SUPPLYCHAIN.SHIPPINGINCIDENTFACT_T
CREATE TABLE SUPPLYCHAIN.SHIPPINGINCIDENTFACT_T (
  INCIDENTID decimal(10,0) NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''IncidentID'' column contains data related to ''incidentid''. This column likely represents an identifier.',
  ZONEKEY decimal(10,0) NOT NULL COMMENT 'The ''ZoneKey'' column contains data related to ''zonekey''.',
  ORDERSTATUSKEY decimal(10,0) NOT NULL COMMENT 'The ''OrderStatusKey'' column contains data related to ''orderstatuskey''. This column contains status information.',
  SHIPMENTID decimal(10,0) NOT NULL COMMENT 'The ''ShipmentID'' column contains data related to ''shipmentid''. This column likely represents an identifier.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  INCIDENTTYPE string(50) COMMENT 'The ''IncidentType'' column contains data related to ''incidenttype''. This column likely represents an identifier.',
  RESOLUTION string(255) COMMENT 'The ''Resolution'' column contains data related to ''resolution''.',
  CONSTRAINT PK_1 PRIMARY KEY (INCIDENTID, ZONEKEY, ORDERSTATUSKEY),
  CONSTRAINT FK_8 FOREIGN KEY (SHIPMENTID) REFERENCES SUPPLYCHAIN.SHIPMENT_T (SHIPMENTID),
  CONSTRAINT FK_2 FOREIGN KEY (ZONEKEY) REFERENCES SUPPLYCHAIN.WAREHOUSEZONEDIM_T (ZONEKEY),
  CONSTRAINT FK_3 FOREIGN KEY (ORDERSTATUSKEY) REFERENCES SUPPLYCHAIN.ORDERSTATUSDIM_T (ORDERSTATUSKEY)
);
-- ************************************** SUPPLYCHAIN.SHIPMENT_T
CREATE TABLE SUPPLYCHAIN.SHIPMENT_T (
  SHIPMENTID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''ShipmentID'' column contains data related to ''shipmentid''. This column likely represents an identifier.',
  WAREHOUSEID decimal(10,0) NOT NULL COMMENT 'The ''WarehouseID'' column contains data related to ''warehouseid''. This column likely represents an identifier.',
  SHIPMENTDATE date NOT NULL COMMENT 'The ''ShipmentDate'' column contains data related to ''shipmentdate''. This column stores information related to dates or times.',
  EXPECTEDARRIVALDATE date COMMENT 'The ''ExpectedArrivalDate'' column contains data related to ''expectedarrivaldate''. This column stores information related to dates or times.',
  SHIPMENTSTATUS string(50) COMMENT 'The ''ShipmentStatus'' column contains data related to ''shipmentstatus''. This column contains status information.',
  SHIPPINGCARRIER string(100) COMMENT 'The ''ShippingCarrier'' column contains data related to ''shippingcarrier''.',
  TRACKINGNUMBER string(50) COMMENT 'The ''TrackingNumber'' column contains data related to ''trackingnumber''.',
  CONSTRAINT FK_9 FOREIGN KEY (WAREHOUSEID) REFERENCES SUPPLYCHAIN.WAREHOUSE_T (WAREHOUSEID)
);
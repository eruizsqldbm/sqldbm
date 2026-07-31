-- ************************************** SC.TRANSPORTATION
CREATE TABLE SC.TRANSPORTATION (
  TRANSPORTATION_ID string NOT NULL CONSTRAINT PK_TRANSPORTATION PRIMARY KEY COMMENT 'Unique identifier for each transportation record.',
  DELIVERY_ID string COMMENT 'References the delivery associated with the transportation.',
  TRANSPORT_DATE date COMMENT 'The date when the transportation occurred.',
  CARRIER string(100) COMMENT 'The name of the carrier or logistics provider handling the transportation.',
  TRACKING_NUMBER string(50) COMMENT 'The tracking number for the shipment.',
  STATUS string(20) COMMENT 'The current status of the transportation (e.g., In Transit, Delivered).',
  CONSTRAINT DELIVERY_ID FOREIGN KEY (DELIVERY_ID) REFERENCES SC.DELIVERY (DELIVERY_ID),
  CONSTRAINT FK_125 FOREIGN KEY (DELIVERY_ID) REFERENCES SC.DELIVERY (DELIVERY_ID)
)
COMMENT 'Tracks transportation details for deliveries, including carriers, tracking numbers, and status.';
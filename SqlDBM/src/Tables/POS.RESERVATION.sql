-- ************************************** POS.RESERVATION
CREATE TABLE POS.RESERVATION (
  RESERVATION_ID decimal(10,0) NOT NULL CONSTRAINT PK_RESERVATION PRIMARY KEY COMMENT 'A unique identifier for each reservation.',
  CUSS_ID decimal(10,0) COMMENT 'The customer who made the reservation, linked to the Customer table.',
  LOCATION_ID decimal(10,0) COMMENT 'The location where the reservation was made, linked to the Location table.',
  RESERVATION_DATE date COMMENT 'The date and time of the reservation.',
  NUMBER_OF_GUESTS decimal(10,0) COMMENT 'The number of guests for the reservation.',
  STATUS string COMMENT 'The status of the reservation (e.g., "Confirmed", "Cancelled").',
  ADDRESS string NOT NULL,
  CONSTRAINT LOCATION_ID FOREIGN KEY (LOCATION_ID) REFERENCES POS.LOCATION (LOCATION_ID),
  CONSTRAINT CUSS_ID FOREIGN KEY (CUSS_ID) REFERENCES POS.CUSS (CUSS_ID)
)
COMMENT 'Table stores data for customer reservations at various locations.';
-- ************************************** SUPPLYCHAIN.ENVIRONMENTALIMPACTFACT
CREATE TABLE SUPPLYCHAIN.ENVIRONMENTALIMPACTFACT (
  IMPACTID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''ImpactID'' column contains data related to ''impactid''. This column likely represents an identifier.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  EMISSIONSCO_2_KG decimal(10,2) COMMENT 'The ''EmissionsCO2Kg'' column contains data related to ''emissionsco2kg''.',
  SHIPMENTID decimal(10,0) NOT NULL COMMENT 'The ''ShipmentID'' column contains data related to ''shipmentid''. This column likely represents an identifier.',
  CONSTRAINT FK_13 FOREIGN KEY (SHIPMENTID) REFERENCES SUPPLYCHAIN.SHIPMENT (SHIPMENTID)
);
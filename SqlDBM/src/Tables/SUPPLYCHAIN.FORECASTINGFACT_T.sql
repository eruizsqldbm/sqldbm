-- ************************************** SUPPLYCHAIN.FORECASTINGFACT_T
CREATE TABLE SUPPLYCHAIN.FORECASTINGFACT_T (
  FORECASTID decimal(10,0) NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''ForecastID'' column contains data related to ''forecastid''. This column likely represents an identifier.',
  SHRINKAGEID decimal(10,0) NOT NULL COMMENT 'The ''ShrinkageID'' column contains data related to ''shrinkageid''. This column likely represents an identifier.',
  PRODUCTKEY decimal(10,0) COMMENT 'The ''ProductKey'' column contains data related to ''productkey''.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  WAREHOUSEKEY decimal(10,0) COMMENT 'The ''WarehouseKey'' column contains data related to ''warehousekey''.',
  FORECASTEDDEMAND decimal(10,0) COMMENT 'The ''ForecastedDemand'' column contains data related to ''forecasteddemand''.',
  ACTUALDEMAND decimal(10,0) COMMENT 'The ''ActualDemand'' column contains data related to ''actualdemand''.',
  FORECASTACCURACY decimal(5,2) COMMENT 'The ''ForecastAccuracy'' column contains data related to ''forecastaccuracy''.',
  CONSTRAINT PK_1 PRIMARY KEY (FORECASTID, SHRINKAGEID),
  CONSTRAINT FK_1 FOREIGN KEY (SHRINKAGEID) REFERENCES SUPPLYCHAIN.INVENTORYSHRINKAGEFACT_T (SHRINKAGEID)
);
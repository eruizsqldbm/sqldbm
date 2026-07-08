-- ************************************** SC.DEMAND_FORECAST_T
CREATE TABLE SC.DEMAND_FORECAST_T (
  FORECAST_ID decimal(10,0) NOT NULL CONSTRAINT PK_DEMAND_FORECAST PRIMARY KEY COMMENT 'Unique identifier for each demand forecast record.',
  MATERIAL_ID string COMMENT 'References the material for which demand is forecasted.',
  FORECAST_DATE date COMMENT 'The date for which demand is forecasted.',
  FORECASTED_QUANTITY decimal(10,0) COMMENT 'The predicted quantity of the material needed on the forecast date.',
  CONSTRAINT MATERIAL_ID FOREIGN KEY (MATERIAL_ID) REFERENCES SC.MATERIAL_T (MATERIAL_ID)
)
COMMENT 'Tracks forecasted material quantities based on historical data and trends.';
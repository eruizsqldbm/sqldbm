-- ************************** SqlDBM: Snowflake *************************
-- ***** Generated by SqlDBM: Data Warehouse by eric.ruiz@sqldbm.com ****

-- ************************************** EDW.FactCurrencyRate
CREATE TABLE EDW.FactCurrencyRate
(
 CurrencyKey  number(38,0) NOT NULL,
 AverageRate  float NOT NULL,
 EndOfDayRate float NOT NULL,

 CONSTRAINT FK_FactCurrencyRate_413 FOREIGN KEY ( CurrencyKey ) REFERENCES EDW.DimCurrency ( CurrencyKey )
);

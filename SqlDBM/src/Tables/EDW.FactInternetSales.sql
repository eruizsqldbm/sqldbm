-- ************************** SqlDBM: Snowflake *************************
-- ***** Generated by SqlDBM: Data Warehouse by eric.ruiz@sqldbm.com ****

-- ************************************** EDW.FactInternetSales
CREATE TABLE EDW.FactInternetSales
(
 ProductKey            number(38,0) NOT NULL,
 CustomerKey           number(38,0) NOT NULL,
 CurrencyKey           number(38,0) NOT NULL,
 SalesOrderNumber      varchar(20) NOT NULL,
 SalesOrderLineNumber  number(38,0) NOT NULL,
 RevisionNumber        number(38,0) NOT NULL,
 OrderQuantity         number(38,0) NOT NULL,
 UnitPrice             number(38,0) NOT NULL,
 ExtendedAmount        number(38,0) NOT NULL,
 UnitPriceDiscountPct  float NOT NULL,
 DiscountAmount        float NOT NULL,
 ProductStandardCost   number(38,0) NOT NULL,
 TotalProductCost      number(38,0) NOT NULL,
 SalesAmount           number(38,0) NOT NULL,
 TaxAmt                number(38,0) NOT NULL,
 Freight               number(38,0) NOT NULL,
 CarrierTrackingNumber varchar(25),
 CustomerPONumber      varchar(25),

 CONSTRAINT FK_FactInternetSales_427 FOREIGN KEY ( ProductKey ) REFERENCES EDW.DimProduct ( ProductKey ),
 CONSTRAINT FK_FactInternetSales_429 FOREIGN KEY ( CustomerKey ) REFERENCES EDW.DimCustomer ( CustomerKey ),
 CONSTRAINT FK_FactInternetSales_433 FOREIGN KEY ( CurrencyKey ) REFERENCES EDW.DimCurrency ( CurrencyKey )
)
COMMENT = 'Fact table to hold Currency Data';

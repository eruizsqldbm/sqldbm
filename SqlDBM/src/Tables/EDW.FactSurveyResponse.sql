-- ************************** SqlDBM: Snowflake *************************
-- ***** Generated by SqlDBM: Data Warehouse by eric.ruiz@sqldbm.com ****
-- ************************************** EDW.FactSurveyResponse
CREATE TABLE EDW.FactSurveyResponse
(
 SurveyResponseKey             number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 CustomerKey                   number(38,0) NOT NULL,
 ProductCategoryKey            number(38,0) NOT NULL,
 EnglishProductCategoryName    varchar(50) NOT NULL,
 ProductSubcategoryKey         number(38,0) NOT NULL,
 EnglishProductSubcategoryName varchar(50) NOT NULL,
 CONSTRAINT FK_FactSurveyResponse_467 FOREIGN KEY ( ProductCategoryKey ) REFERENCES EDW.DimProductCategory ( ProductCategoryKey )
);

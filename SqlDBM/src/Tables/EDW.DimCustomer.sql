-- ************************** SqlDBM: Snowflake *************************
-- ***** Generated by SqlDBM: Data Warehouse by eric.ruiz@sqldbm.com ****

-- ************************************** EDW.DimCustomer
CREATE TABLE EDW.DimCustomer
(
 CustomerKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Customer Identifier',
 GeographyKey         number(38,0) COMMENT 'Geographic informatio',
 CustomerAlternateKey varchar(15) NOT NULL COMMENT 'Alternate Key',
 Title                varchar(8) COMMENT 'Title of the Customer',
 FirstName            varchar(50),
 MiddleName           varchar(50),
 LastName             varchar(50),
 NameStyle            varchar(5),
 BirthDate            date,
 MaritalStatus        varchar(1),
 Suffix               varchar(10),
 Gender               varchar(1),
 EmailAddress         varchar(50),
 YearlyIncome         number(38,0),
 TotalChildren        number(38,0),
 NumberChildrenAtHome number(38,0),
 EnglishEducation     varchar(40),
 SpanishEducation     varchar(40),
 FrenchEducation      varchar(40),
 EnglishOccupation    varchar(100),
 SpanishOccupation    varchar(100),
 FrenchOccupation     varchar(100),
 HouseOwnerFlag       varchar(1),
 NumberCarsOwned      number(38,0),
 AddressLine          varchar(120),
 AddressLine2         varchar(120),
 Phone                varchar(20),
 DateFirstPurchase    date,
 CommuteDistance      varchar(15),

 CONSTRAINT PK_DimCustomer PRIMARY KEY ( CustomerKey ),
 CONSTRAINT FK_DimCustomer_401 FOREIGN KEY ( GeographyKey ) REFERENCES EDW.DimGeography ( GeographyKey )
)
COMMENT = 'Dimension for Customer Data';

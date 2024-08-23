-- ************************** SqlDBM: Snowflake *************************
-- ***** Generated by SqlDBM: Data Warehouse by eric.ruiz@sqldbm.com ****

-- ************************************** EDW.DimScenario
CREATE TABLE EDW.DimScenario
(
 ScenarioKey  number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Scenario Identifier',
 ScenarioName varchar(50) COMMENT 'Name of the Scenario',
 CreatedBy    varchar(50) NOT NULL COMMENT 'Who Created this Scenario',
 CreatedDate  timestamp_ntz(9) NOT NULL COMMENT 'Scenario Creation Date',
 UpdatedDate  timestamp_ntz(9) NOT NULL,
 UpdatedBy    varchar(50) NOT NULL,
 TestCol      varchar(50) NOT NULL,

 CONSTRAINT PK_DimScenario PRIMARY KEY ( ScenarioKey )
)
COMMENT = 'Dimension Scenario';
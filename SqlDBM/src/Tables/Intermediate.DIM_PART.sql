-- ***************************** SqlDBM: Snowflake *****************************
-- * Generated by SqlDBM: dbt + SqlDBM One Project by eric.ruiz+yew@sqldbm.com *

-- ************************************** Intermediate.DIM_PART
CREATE TABLE Intermediate.DIM_PART
(
 PARTKEY        number(38,0) NOT NULL COMMENT 'Primary key for the part',
 NAME           varchar(55),
 MFGR           varchar(25) COMMENT 'Manufacturer of the part',
 BRAND          varchar(10) COMMENT 'Brand of the part',
 TYPE           varchar(25) COMMENT 'Type or category of the part',
 SIZE           number(38,0) COMMENT 'Size of the part',
 CONTAINER      varchar(10) COMMENT 'Container type used for the part',
 RETAILPRICE    number(12,2) COMMENT 'Retail price of the part',
 COMMENT        varchar(23) COMMENT 'Additional comments about the part',
 LOAD_TIMESTAMP timestamp_ltz(9) COMMENT 'Timestamp when the record was loaded',
 LAST_UPDATED   timestamp NOT NULL,

 CONSTRAINT PK_1 PRIMARY KEY ( PARTKEY )
);

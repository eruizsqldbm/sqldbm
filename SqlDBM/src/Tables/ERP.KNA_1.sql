-- ************************************** ERP.KNA_1
CREATE TABLE ERP.KNA_1 (
  KUNNR string NOT NULL CONSTRAINT PK_KNA_1 PRIMARY KEY COMMENT 'Unique identifier for the customer; primary key of the table.',
  LAND_1 string COMMENT 'Specifies the country of the customer; linked to table T005 for country codes.',
  NAME_1 string(50) COMMENT 'Primary name of the customer.',
  ORT_01 string(35) COMMENT 'City where the customer is located.',
  PSTLZ string COMMENT 'Postal code for the customer''s address.',
  REGIO string COMMENT 'Region or state of the customer''s location; linked to table T005S for region codes.',
  TELF_1 string COMMENT 'Primary contact telephone number for the customer.'
)
COMMENT 'Table contains general data for customers, such as address details and contact information.';
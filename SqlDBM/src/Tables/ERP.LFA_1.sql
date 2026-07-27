-- ************************************** ERP.LFA_1
CREATE TABLE ERP.LFA_1 (
  LIFNR string NOT NULL CONSTRAINT PK_LFA_1 PRIMARY KEY COMMENT 'Unique identifier for the vendor; primary key of the table.',
  NAME_1 string(50) COMMENT 'Primary name of the vendor.',
  LAND_1 string COMMENT 'Specifies the country of the vendor; linked to table T005 for country codes.',
  ORT_01 string(35) COMMENT 'City where the vendor is located.',
  PSTLZ string COMMENT 'Postal code for the vendor''s address.',
  TELF_1 string COMMENT 'Primary contact telephone number for the vendor.'
)
COMMENT 'Table stores general information about vendors (suppliers), including their names, addresses, and contact details.';
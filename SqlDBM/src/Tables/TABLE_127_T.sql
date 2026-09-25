-- ************************************** TABLE_127_T
CREATE TABLE TABLE_127_T (
  LAND_1 string COMMENT 'Specifies the country of the customer; linked to table T005 for country codes.',
  NAME_1 string(50) COMMENT 'Primary name of the customer.',
  LAST_NAME string COMMENT 'The last name of the customer.',
  CUSS_NAME string(100) COMMENT 'The name of the customer organization or individual.',
  COUNTRY string COMMENT 'The country code where the customer is located.',
  EMAIL string COMMENT 'The email address of the customer.',
  ADDRESS string NOT NULL
);
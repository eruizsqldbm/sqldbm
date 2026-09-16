-- ************************************** POS.EMPLOYEE
CREATE TABLE POS.EMPLOYEE (
  EMPLOYEE_ID decimal(10,0) NOT NULL CONSTRAINT PK_EMPLOYEE PRIMARY KEY COMMENT 'A unique identifier for each employee.',
  FIRST_NAME string COMMENT 'The first name of the employee.',
  LAST_NAME string COMMENT 'The last name of the employee.',
  POSITION string COMMENT 'The role or job position of the employee (e.g., "Cashier", "Manager").',
  LOCATION_ID decimal(10,0) COMMENT 'The location where the employee works, linked to the Location table.',
  CREATED_DATE date COMMENT 'The date when the employee record was created.',
  CONSTRAINT LOCATION_ID FOREIGN KEY (LOCATION_ID) REFERENCES POS.LOCATION (LOCATION_ID)
)
COMMENT 'Table stores information about employees working at different business locations.';
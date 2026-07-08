-- ************************************** SUPPLYCHAIN.EMPLOYEEDIM_T
CREATE TABLE SUPPLYCHAIN.EMPLOYEEDIM_T (
  EMPLOYEEKEY decimal(10,0) NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''EmployeeKey'' column contains data related to ''employeekey''.',
  EMPLOYEEID decimal(10,0) COMMENT 'The ''EmployeeID'' column contains data related to ''employeeid''. This column likely represents an identifier.',
  FIRSTNAME string(100) COMMENT 'The ''FirstName'' column contains data related to ''firstname''. This column holds name-related data.',
  LASTNAME string(100) COMMENT 'The ''LastName'' column contains data related to ''lastname''. This column holds name-related data.',
  JOBTITLE string(100) COMMENT 'The ''JobTitle'' column contains data related to ''jobtitle''.',
  DEPARTMENT string(100) COMMENT 'The ''Department'' column contains data related to ''department''.',
  HIREDATE date COMMENT 'The ''HireDate'' column contains data related to ''hiredate''. This column stores information related to dates or times.',
  TERMINATIONDATE date COMMENT 'The ''TerminationDate'' column contains data related to ''terminationdate''. This column stores information related to dates or times.',
  SUPERVISORID decimal(10,0) COMMENT 'The ''SupervisorID'' column contains data related to ''supervisorid''. This column likely represents an identifier.'
);
-- ************************************** SUPPLYCHAIN.USERDIM
CREATE TABLE SUPPLYCHAIN.USERDIM (
  USERID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''UserID'' column contains data related to ''userid''. This column likely represents an identifier.',
  FIRSTNAME string(100) COMMENT 'The ''FirstName'' column contains data related to ''firstname''. This column holds name-related data.',
  LASTNAME string(100) COMMENT 'The ''LastName'' column contains data related to ''lastname''. This column holds name-related data.',
  EMAIL string(255) COMMENT 'The ''Email'' column contains data related to ''email''.',
  ROLE string(50) COMMENT 'The ''Role'' column contains data related to ''role''.',
  HIREDATE date COMMENT 'The ''HireDate'' column contains data related to ''hiredate''. This column stores information related to dates or times.'
);
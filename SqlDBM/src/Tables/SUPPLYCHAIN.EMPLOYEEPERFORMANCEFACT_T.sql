-- ************************************** SUPPLYCHAIN.EMPLOYEEPERFORMANCEFACT_T
CREATE TABLE SUPPLYCHAIN.EMPLOYEEPERFORMANCEFACT_T (
  PERFORMANCEID decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''PerformanceID'' column contains data related to ''performanceid''. This column likely represents an identifier.',
  EMPLOYEEKEY decimal(10,0) COMMENT 'The ''EmployeeKey'' column contains data related to ''employeekey''.',
  DATEKEY date COMMENT 'The ''DateKey'' column contains data related to ''datekey''. This column stores information related to dates or times.',
  TASKSCOMPLETED decimal(10,0) COMMENT 'The ''TasksCompleted'' column contains data related to ''taskscompleted''.',
  ERRORSMADE decimal(10,0) COMMENT 'The ''ErrorsMade'' column contains data related to ''errorsmade''.',
  PERFORMANCESCORE decimal(5,2) COMMENT 'The ''PerformanceScore'' column contains data related to ''performancescore''.'
);
-- ************************************** ERP.PA_0001_T
CREATE TABLE ERP.PA_0001_T (
  PERNR string NOT NULL CONSTRAINT PK_PA_0001 PRIMARY KEY COMMENT 'Unique identifier for each employee. Serves as the primary key for HR master data records.',
  BUKRS string COMMENT 'Represents the company code to which the employee is assigned.',
  ABKRS string COMMENT 'Identifies the payroll area to which the employee belongs.'
)
COMMENT 'Table contains HR master data, specifically related to employee organizational assignments (e.g., company code, personnel area).';
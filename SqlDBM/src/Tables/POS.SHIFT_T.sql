-- ************************************** POS.SHIFT_T
CREATE TABLE POS.SHIFT_T (
  SHIFT_ID decimal(10,0) NOT NULL CONSTRAINT PK_SHIFT PRIMARY KEY COMMENT 'A unique identifier for each shift record.',
  EMPLOYEE_ID decimal(10,0) COMMENT 'The employee working the shift, linked to the Employee table.',
  START_DATE date COMMENT 'The starting time of the shift.',
  END_DATE date COMMENT 'The ending time of the shift.',
  CONSTRAINT EMPLOYEE_ID FOREIGN KEY (EMPLOYEE_ID) REFERENCES POS.EMPLOYEE_T (EMPLOYEE_ID)
)
COMMENT 'Table stores employee work shift details.';
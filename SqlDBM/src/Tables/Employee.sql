-- ************************************** Employee
CREATE TABLE Employee (
  employee_number decimal(5, 0) NOT NULL CONSTRAINT PK_Employee PRIMARY KEY,
  emp_employee_number decimal(5, 0),
  division_number decimal(5, 0),
  first_name varchar(30),
  last_name varchar(30),
  employee_function varchar(30),
  employee_salary decimal(8, 2),
  CONSTRAINT FK_Employee_Division FOREIGN KEY (division_number) REFERENCES Division (division_number),
  CONSTRAINT FK_Employee_Manager FOREIGN KEY (emp_employee_number) REFERENCES Employee (employee_number)
);
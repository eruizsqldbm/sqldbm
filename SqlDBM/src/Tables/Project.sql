-- ************************************** Project
CREATE TABLE Project (
  project_number decimal(5, 0) NOT NULL CONSTRAINT PK_Project PRIMARY KEY,
  start_date_act date,
  end_date_act date,
  customer_number decimal(5, 0),
  employee_number decimal(5, 0),
  project_name varchar(30),
  project_label varchar(80),
  CONSTRAINT FK_Project_Employee FOREIGN KEY (employee_number) REFERENCES Employee (employee_number),
  CONSTRAINT FK_Project_Customer FOREIGN KEY (customer_number) REFERENCES Customer (customer_number)
);
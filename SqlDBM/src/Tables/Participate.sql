-- ************************************** Participate
CREATE TABLE Participate (
  project_number decimal(5, 0) NOT NULL,
  task_name varchar(30) NOT NULL,
  employee_number decimal(5, 0) NOT NULL,
  start_date_par date,
  end_date_par date,
  CONSTRAINT PK_Participate PRIMARY KEY (project_number, task_name, employee_number),
  CONSTRAINT FK_Participate_Employee FOREIGN KEY (employee_number) REFERENCES Employee (employee_number),
  CONSTRAINT FK_Participate_Task FOREIGN KEY (project_number, task_name) REFERENCES Task (project_number, task_name)
);
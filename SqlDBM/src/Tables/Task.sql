-- ************************************** Task
CREATE TABLE Task (
  project_number decimal(5, 0) NOT NULL,
  task_name varchar(30) NOT NULL,
  start_date_act date,
  end_date_act date,
  task_cost decimal(8, 2),
  customer_number decimal(5, 0) NOT NULL COMMENT 'Unique identifier for the customer',
  CONSTRAINT PK_Task PRIMARY KEY (project_number, task_name),
  CONSTRAINT FK_14 FOREIGN KEY (customer_number) REFERENCES Customer (customer_number),
  CONSTRAINT FK_Task_Project FOREIGN KEY (project_number) REFERENCES Project (project_number)
);
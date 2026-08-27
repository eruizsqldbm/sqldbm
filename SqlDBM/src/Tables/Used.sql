-- ************************************** Used
CREATE TABLE Used (
  employee_number decimal(5, 0) NOT NULL,
  material_number decimal(5, 0) NOT NULL,
  CONSTRAINT PK_Used PRIMARY KEY (employee_number, material_number),
  CONSTRAINT FK_Used_Employee FOREIGN KEY (employee_number) REFERENCES Employee (employee_number),
  CONSTRAINT FK_Used_Material FOREIGN KEY (material_number) REFERENCES Material (material_number)
);
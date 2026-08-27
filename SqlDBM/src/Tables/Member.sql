-- ************************************** Member
CREATE TABLE Member (
  employee_number decimal(5, 0) NOT NULL,
  team_number decimal(5, 0) NOT NULL,
  CONSTRAINT PK_Member PRIMARY KEY (employee_number, team_number),
  CONSTRAINT FK_Member_Team FOREIGN KEY (team_number) REFERENCES Team (team_number),
  CONSTRAINT FK_Member_Employee FOREIGN KEY (employee_number) REFERENCES Employee (employee_number)
);
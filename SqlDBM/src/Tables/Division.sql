-- ************************************** Division
CREATE TABLE Division (
  division_number decimal(5, 0) NOT NULL CONSTRAINT PK_Division PRIMARY KEY,
  division_name varchar(30),
  division_address varchar(80)
);
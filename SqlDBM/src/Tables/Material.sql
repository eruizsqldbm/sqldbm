-- ************************************** Material
CREATE TABLE Material (
  material_number decimal(5, 0) NOT NULL CONSTRAINT PK_Material PRIMARY KEY,
  material_name varchar(30),
  material_type varchar(30)
);
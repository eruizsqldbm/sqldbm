-- ************************************** Compose
CREATE TABLE Compose (
  mat_material_number decimal(5, 0) NOT NULL,
  material_number decimal(5, 0) NOT NULL,
  CONSTRAINT PK_Compose PRIMARY KEY (mat_material_number, material_number),
  CONSTRAINT FK_Compose_MaterialComponent FOREIGN KEY (material_number) REFERENCES Material (material_number),
  CONSTRAINT FK_Compose_MaterialComposed FOREIGN KEY (mat_material_number) REFERENCES Material (material_number)
);
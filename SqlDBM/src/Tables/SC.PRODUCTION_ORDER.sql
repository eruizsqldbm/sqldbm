-- ************************************** SC.PRODUCTION_ORDER
CREATE TABLE SC.PRODUCTION_ORDER (
  PRODUCTION_ORDER_ID string NOT NULL CONSTRAINT PK_PRODUCTION_ORDER PRIMARY KEY COMMENT 'Unique identifier for each production order.',
  MATERIAL_ID string COMMENT 'References the material being produced.',
  PLANT_ID string COMMENT 'References the plant where production is taking place.',
  QUANTITY decimal(10,0) COMMENT 'The quantity of the material to be produced.',
  START_DATE date COMMENT 'The start date for the production order.',
  END_DATE date COMMENT 'The end date or completion date of the production order.',
  STATUS string(20) COMMENT 'The current status of the production order (e.g., In Progress, Completed).',
  CONSTRAINT FK_107 FOREIGN KEY (MATERIAL_ID) REFERENCES SC.MATERIAL (MATERIAL_ID),
  CONSTRAINT FK_108 FOREIGN KEY (PLANT_ID) REFERENCES SC.PLANT (PLANT_ID),
  CONSTRAINT PLANT_ID FOREIGN KEY (PLANT_ID) REFERENCES SC.PLANT (PLANT_ID)
)
COMMENT 'Tracks orders for producing materials, linking them to plants and materials.';
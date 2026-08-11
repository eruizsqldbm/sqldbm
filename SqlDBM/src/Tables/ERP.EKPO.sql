-- ************************************** ERP.EKPO
CREATE TABLE ERP.EKPO (
  EBELN string NOT NULL COMMENT 'Unique identifier for the purchasing document; links to the EKKO table.',
  EBELP string NOT NULL COMMENT 'Sequential number of the item within the purchasing document.',
  MATNR string COMMENT 'Identifier for the material; links to the MARA table.',
  MENGE decimal(10,0) COMMENT 'Quantity Ordered',
  CONSTRAINT EBELN PRIMARY KEY (EBELN, EBELP)
)
COMMENT 'Stores detailed information for each item within purchasing documents such as purchase orders, contracts, and scheduling agreements.';
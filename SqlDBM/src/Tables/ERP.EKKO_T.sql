-- ************************************** ERP.EKKO_T
CREATE TABLE ERP.EKKO_T (
  EBELN string NOT NULL CONSTRAINT PK_EKKO PRIMARY KEY COMMENT 'Unique identifier for the purchasing document.',
  BUKRS string COMMENT 'Represents the company code associated with the purchasing document.',
  LIFNR string COMMENT 'Account number of the vendor associated with the purchasing document.',
  ERDAT date COMMENT 'Date on Which the Record Was Created',
  CONSTRAINT FK_88 FOREIGN KEY (LIFNR) REFERENCES ERP.LFA_1_T (LIFNR),
  CONSTRAINT FK_92 FOREIGN KEY (BUKRS) REFERENCES ERP.T_001_T (BUKRS)
)
COMMENT 'Table stores the header information for purchase orders, including the vendor, company code, and document creation date.';
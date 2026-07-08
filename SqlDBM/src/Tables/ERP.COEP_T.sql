-- ************************************** ERP.COEP_T
CREATE TABLE ERP.COEP_T (
  OBJNR string COMMENT 'A unique identifier for the controlling object (e.g., cost center, internal order, WBS element).',
  GJAHR string COMMENT 'Indicates the fiscal year in which the document was created.',
  PAROB string COMMENT 'Controlling object (e.g., cost center, internal order) linked as the partner in a transaction.',
  BELNR string COMMENT 'Unique identifier for the CO document. Links line items to the document header in the COBK table.',
  WRTTP string COMMENT 'Defines the type of value (e.g., actual, planned, commitment).',
  WTG_001 decimal(10,0) COMMENT 'Total Value in Transaction Currency for Period 1'
)
COMMENT 'Table stores individual line items for cost accounting documents, linking to the corresponding cost objects (e.g., cost centers, internal orders).';
-- ************************************** SUPPLYCHAIN.AUDITLOGFACT
CREATE TABLE SUPPLYCHAIN.AUDITLOGFACT (
  USERID decimal(10,0) NOT NULL COMMENT 'The ''UserID'' column contains data related to ''userid''. This column likely represents an identifier.',
  AUDITID decimal(10,0) NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''AuditID'' column contains data related to ''auditid''. This column likely represents an identifier.',
  ACTION string(255) COMMENT 'The ''Action'' column contains data related to ''action''.',
  ACTIONDATE date COMMENT 'The ''ActionDate'' column contains data related to ''actiondate''. This column stores information related to dates or times.',
  ACTIONTIME timestamp COMMENT 'The ''ActionTime'' column contains data related to ''actiontime''. This column stores information related to dates or times.',
  ENTITYAFFECTED string(100) COMMENT 'The ''EntityAffected'' column contains data related to ''entityaffected''.',
  ENTITYID decimal(10,0) COMMENT 'The ''EntityID'' column contains data related to ''entityid''. This column likely represents an identifier.',
  NOTES string(500) COMMENT 'The ''Notes'' column contains data related to ''notes''.',
  CONSTRAINT FK_18 FOREIGN KEY (USERID) REFERENCES SUPPLYCHAIN.USERDIM (USERID)
);
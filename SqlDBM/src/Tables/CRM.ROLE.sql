-- ************************************** CRM.ROLE
CREATE TABLE CRM.ROLE (
  ROLE_ID string NOT NULL CONSTRAINT PK_ROLE PRIMARY KEY COMMENT 'Unique identifier for each role, used as the primary key.',
  NAME string(80) NOT NULL COMMENT 'Specifies the name of the role, such as Sales Manager or Support Agent.',
  PARENT_ROLE_ID string COMMENT 'References the parent role to establish hierarchical reporting structures.',
  CREATED_DATE date COMMENT 'Records when the role was created in the CRM system.',
  CONSTRAINT PARENT_ROLE_ID FOREIGN KEY (PARENT_ROLE_ID) REFERENCES CRM.ROLE (ROLE_ID)
)
COMMENT 'Defines user roles in the CRM system, enabling role-based access control and hierarchical organization.';
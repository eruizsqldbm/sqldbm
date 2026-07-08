-- ************************************** SUPPLYCHAIN.SHIPPINGMETHODDIM_T
CREATE TABLE SUPPLYCHAIN.SHIPPINGMETHODDIM_T (
  SHIPPINGMETHODKEY decimal(10,0) NOT NULL CONSTRAINT PK_1 PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) COMMENT 'The ''ShippingMethodKey'' column contains data related to ''shippingmethodkey''.',
  METHODNAME string(255) NOT NULL COMMENT 'The ''MethodName'' column contains data related to ''methodname''. This column holds name-related data.',
  CARRIER string(255) COMMENT 'The ''Carrier'' column contains data related to ''carrier''.',
  ESTIMATEDDELIVERYTIME decimal(10,0) COMMENT 'The ''EstimatedDeliveryTime'' column contains data related to ''estimateddeliverytime''. This column stores information related to dates or times.'
);
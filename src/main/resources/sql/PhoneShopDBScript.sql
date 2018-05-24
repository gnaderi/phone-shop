drop table if exists PRODUCT_TYPE;
CREATE TABLE IF NOT EXISTS PRODUCT_TYPE (
  ID   INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  NAME VARCHAR(255)                   NOT NULL,
  DESC VARCHAR(255)
);
drop table if exists PRODUCT;
CREATE TABLE IF NOT EXISTS PRODUCT (
  ID              INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  PRODUCT_TYPE_ID INT                            NOT NULL,
  NAME            VARCHAR(255)                   NOT NULL,
  DESC            VARCHAR(255),
  QUANTITY        INT,
  PRICE           FLOAT8,
  FOREIGN KEY (PRODUCT_TYPE_ID) REFERENCES PRODUCT_TYPE (ID),
);




INSERT INTO PRODUCT_TYPE (NAME, DESC) VALUES ('Phone', 'Phone');
INSERT INTO PRODUCT_TYPE (NAME, DESC) VALUES ('Phone Insurance', 'Phone Insurance');
INSERT INTO PRODUCT_TYPE (NAME, DESC) VALUES ('Phone Case', 'Phone Case');
INSERT INTO PRODUCT_TYPE (NAME, DESC) VALUES ('SIM Card', 'SIM Card');






INSERT INTO PRODUCT (PRODUCT_TYPE_ID, NAME, DESC, QUANTITY, PRICE)VALUES (1, 'Pear myPhoneX', 'Pear myPhoneX', 200, 500.00);
INSERT INTO PRODUCT (PRODUCT_TYPE_ID, NAME, DESC, QUANTITY, PRICE)VALUES (1, 'Pear myPhone7', 'Pear myPhone7', 200, 300.00);
INSERT INTO PRODUCT (PRODUCT_TYPE_ID, NAME, DESC, QUANTITY, PRICE)VALUES (4, 'SIM Card ', 'SIM Card', 200, 20.00);
INSERT INTO PRODUCT (PRODUCT_TYPE_ID, NAME, DESC, QUANTITY, PRICE)VALUES (2, 'Phone Insurance', 'Phone Insurance (for 2 years)', 200, 120.00);
INSERT INTO PRODUCT (PRODUCT_TYPE_ID, NAME, DESC, QUANTITY, PRICE)VALUES (3, 'Phone Case', 'Phone Case', 200, 10.00);














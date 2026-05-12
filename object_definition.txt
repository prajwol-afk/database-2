Object Definition Activity – SQL
-- DROP STATEMENTS
DROP TABLE adverts PURGE;
DROP TABLE prospective_customers PURGE;
DROP TYPE social_media_table_type;
DROP TYPE social_media_varray_type;
DROP TYPE social_media_type;

DROP TABLE customers PURGE;
DROP TABLE bill_addresses PURGE;
-- DROP TABLE states;
-- DROP TYPE state_type;
DROP TYPE invoice_address_type;


 DEFINING OBJECT TYPES


CREATE OR REPLACE TYPE invoice_address_type AS OBJECT(
street VARCHAR2(25),
city VARCHAR2(25),
country VARCHAR2(25)
);
/


 USING OBJECT COLUMNS IN RELATIONAL TABLES


CREATE TABLE customers(
customer_id NUMBER(6),
customer_name VARCHAR2(25),
invoice_address invoice_address_type
);

DESC customers;


 DEFINING OBJECT TABLES


CREATE TABLE bill_addresses OF invoice_address_type;

DESC bill_addresses;


 REFERENCING OBJECT TABLES IN RELATIONAL TABLES


DROP TABLE customers PURGE;

CREATE TABLE customers(
customer_id NUMBER(6),
customer_name VARCHAR2(25),
invoice_address REF invoice_address_type
SCOPE IS bill_addresses
);

DESC customers;


 ALTERING RELATIONAL TABLES


CREATE OR REPLACE TYPE state_type AS OBJECT(
state VARCHAR2(25),
country VARCHAR2(25)
);
/

DESC state_type;

CREATE TABLE states OF state_type;

ALTER TABLE sites ADD(
state_ref REF state_type
SCOPE IS states
);

DESC sites;

DESC user_objects;

SELECT object_name, object_type
FROM user_objects;


 DEFINING VARRAYS


CREATE OR REPLACE TYPE social_media_type AS OBJECT(
media_name VARCHAR2(25),
contact VARCHAR2(50)
);
/

CREATE TYPE social_media_varray_type
AS VARRAY(50) OF social_media_type;
/

SELECT object_name, object_type
FROM user_objects;

COLUMN object_name FORMAT A25;
COLUMN object_type FORMAT A25;

SELECT object_name, object_type
FROM user_objects;


 USING VARRAYS IN RELATIONAL TABLES


CREATE TABLE prospective_customers(
prospective_customer_id NUMBER(6),
company_name VARCHAR2(50),
contact_name VARCHAR2(25),
social_media_available social_media_varray_type
);

DESC prospective_customers;


 DEFINING NESTED TABLES


CREATE TYPE social_media_table_type
AS TABLE OF social_media_type;
/

DESC social_media_table_type;

CREATE TABLE adverts(
advert_id NUMBER(6),
advert_title VARCHAR2(50),
description VARCHAR2(25),
social_media_used social_media_table_type
)
NESTED TABLE social_media_used
STORE AS social_media_used_nt;

DESC adverts;


 EXIT

EXIT;


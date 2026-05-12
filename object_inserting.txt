Object Inserts Activity – SQL 

 INSERTING DATA INTO OBJECT TABLE


INSERT INTO bill_addresses
VALUES ('123 MAIN STREET', 'KATHMANDU', 'NEPAL');

SELECT * FROM bill_addresses;

 INSERTING DATA INTO TABLE WITH REF


INSERT INTO customers
(customer_id, customer_name, invoice_address)
SELECT 1001, 'PRAJWOL', REF(b)
FROM bill_addresses b
WHERE b.street = '123 MAIN STREET';

SELECT * FROM customers;


 UPDATING DATA WITH REF


INSERT INTO states
VALUES ('BIHAR', 'INDIA');

UPDATE sites s
SET s.state_ref = (
SELECT REF(st)
FROM states st
WHERE st.state = 'BIHAR'
)
WHERE s.site_id = 1;

SELECT site_id, state_ref
FROM sites;


 INSERTING INTO OBJECT COLUMN


DROP TABLE customers PURGE;

CREATE TABLE customers(
customer_id NUMBER(6),
customer_name VARCHAR2(25),
invoice_address invoice_address_type
);

DESC customers;

INSERT INTO customers
VALUES (
2001,
'RAM',
invoice_address_type(
'PUTALISADAK',
'KATHMANDU',
'NEPAL'
)
);

SELECT * FROM customers;


INSERTING INTO STATES


INSERT INTO states
VALUES ('MAHARASHTRA', 'AUSTRALIA');

INSERT INTO states
VALUES ('BAGMATI', 'CANADA');


INSERTING INTO SITES


INSERT INTO sites
(site_id, address, location, state_ref)
VALUES (
20,
address_type(
'NEW BANESHWOR',
'KATHMANDU',
'NEPAL'
),
'ASIA CENTER',
(
SELECT REF(s)
FROM states s
WHERE s.state = 'MAHARASHTRA'
)
);

 BONUS INSERT


INSERT INTO sites
(site_id, address, location)
VALUES (
21,
address_type(
'FICTIONAL STREET',
'DREAMCITY',
'USA'
),
'TEST CENTER'
);

UPDATE sites s
SET s.state_ref = (
SELECT REF(st)
FROM states st
WHERE st.state = 'BAGMATI'
)
WHERE s.site_id = 21;

 VARRAY INSERTS


INSERT INTO prospective_customers
VALUES (
80000,
'ABC ',
'JOHN DOE',
social_media_varray_type(
social_media_type('FACEBOOK', 'facebook.com/abc'),
social_media_type('INSTAGRAM', '@abc'),
social_media_type('LINKEDIN', 'linkedin.com/abc')
)
);

INSERT INTO prospective_customers
VALUES (
80001,
'XYZ',
'JANE',
social_media_varray_type(
social_media_type('TWITTER', '@prajwol'),
social_media_type('YOUTUBE', 'youtube.com/prajwol'),
social_media_type('TIKTOK', '@prajwol')
)
);

SELECT * FROM prospective_customers;

 NESTED TABLE INSERTS


INSERT INTO adverts
VALUES (
90000,
'SUMMER SALE',
'BIG DISCOUNT',
social_media_table_type(
social_media_type('FACEBOOK', 'fb.com/summersale'),
social_media_type('INSTAGRAM', '@summersale'),
social_media_type('YOUTUBE', 'youtube.com/summersale')
)
);

SELECT * FROM adverts;



INSERT INTO sites
(site_id, address, classroom, location, state_ref)
VALUES (
30,
address_type(
'KALANKI',
'KATHMANDU',
'NEPAL'
),
classroom_varray_type(
classroom_type(1, 20, NULL),
classroom_type(2, 25, NULL)
),
'NEPAL CENTER',
(
SELECT REF(s)
FROM states s
WHERE s.state = 'BAGMATI'
)
);


 BONUS TRICKY INSERT AND UPDATE


INSERT INTO sites
(site_id, address, location)
VALUES (
31,
address_type(
'CHABAHIL',
'KATHMANDU',
'NEPAL'
),
'BONUS CENTER'
);

UPDATE sites
SET classroom =
classroom_varray_type(
classroom_type(1, 30, NULL),
classroom_type(2, 35, NULL)
)
WHERE site_id = 31;

EXIT;


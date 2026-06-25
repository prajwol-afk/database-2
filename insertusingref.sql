INSERT INTO customers
(customer_id, customer_name, invoice_address)
SELECT 1,'RAM SHARMA',REF(b)
FROM bill_addresses b
WHERE b.street='54 FESTIVE ROAD';

INSERT INTO customers
(customer_id, customer_name, invoice_address)
SELECT 2,'SITA SHARMA',REF(b)
FROM bill_addresses b
WHERE b.street='30 ENGLISH STREET';

INSERT INTO customers
(customer_id, customer_name, invoice_address)
SELECT 3,'PRAJWOL TIMALSINA',REF(b)
FROM bill_addresses b
WHERE b.street='12 BAGMATI ROAD';

INSERT INTO customers
(customer_id, customer_name, invoice_address)
SELECT 4,'HARI THAPA',REF(b)
FROM bill_addresses b
WHERE b.street='77 LAKESIDE ROAD';

INSERT INTO customers
(customer_id, customer_name, invoice_address)
SELECT 5,'GITA KARKI',REF(b)
FROM bill_addresses b
WHERE b.street='99 EVEREST MARG';

COMMIT;

SELECT * FROM customers;
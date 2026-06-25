INSERT INTO sites
(site_id,address,state_ref)
SELECT
100,
address_type('NEW BANESHWOR','KATHMANDU','NEPAL'),
REF(st)
FROM states st
WHERE st.state='QUEENSLAND';

INSERT INTO sites
(site_id,address,state_ref)
SELECT
101,
address_type('LAKESIDE','POKHARA','NEPAL'),
REF(st)
FROM states st
WHERE st.state='ALBERTA';

INSERT INTO sites
(site_id,address,state_ref)
SELECT
102,
address_type('PUTALISADAK','KATHMANDU','NEPAL'),
REF(st)
FROM states st
WHERE st.state='DELHI';

INSERT INTO sites
(site_id,address,state_ref)
SELECT
103,
address_type('JANAKPUR ROAD','JANAKPUR','NEPAL'),
REF(st)
FROM states st
WHERE st.state='VICTORIA';

INSERT INTO sites
(site_id,address,state_ref)
SELECT
104,
address_type('ITAHARI LINE','ITAHARI','NEPAL'),
REF(st)
FROM states st
WHERE st.state='BIHAR';

COMMIT;
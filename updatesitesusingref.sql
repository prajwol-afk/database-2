
UPDATE sites s
SET s.state_ref=
(
SELECT REF(st)
FROM states st
WHERE st.state='BIHAR'
)
WHERE s.site_id=1;

UPDATE sites s
SET s.state_ref=
(
SELECT REF(st)
FROM states st
WHERE st.state='DELHI'
)
WHERE s.site_id=2;

UPDATE sites s
SET s.state_ref=
(
SELECT REF(st)
FROM states st
WHERE st.state='ALBERTA'
)
WHERE s.site_id=3;

UPDATE sites s
SET s.state_ref=
(
SELECT REF(st)
FROM states st
WHERE st.state='VICTORIA'
)
WHERE s.site_id=4;

UPDATE sites s
SET s.state_ref=
(
SELECT REF(st)
FROM states st
WHERE st.state='QUEENSLAND'
)
WHERE s.site_id=5;

COMMIT;

SELECT site_id,state_ref
FROM sites;
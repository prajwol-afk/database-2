INSERT INTO prospective_customers
VALUES
(
80000,
'EVEREST TECH',
'PRAJWOL TIMALSINA',
social_media_varray_type(
social_media_type('FACEBOOK','prajwol.fb'),
social_media_type('INSTAGRAM','@prajwol'),
social_media_type('LINKEDIN','prajwol-li')
)
);

INSERT INTO prospective_customers
VALUES
(
80001,
'HIMALAYA SOFTWARE',
'SITA SHARMA',
social_media_varray_type(
social_media_type('FACEBOOK','sita.fb'),
social_media_type('INSTAGRAM','@sita'),
social_media_type('TIKTOK','@sita123')
)
);

INSERT INTO prospective_customers
VALUES
(
80002,
'BAGMATI IT',
'HARI THAPA',
social_media_varray_type(
social_media_type('FACEBOOK','hari.fb'),
social_media_type('INSTAGRAM','hari.ig'),
social_media_type('LINKEDIN','hari.li')
)
);

INSERT INTO prospective_customers
VALUES
(
80003,
'POKHARA WEB',
'GITA KARKI',
social_media_varray_type(
social_media_type('FACEBOOK','gita.fb'),
social_media_type('INSTAGRAM','gita.ig'),
social_media_type('YOUTUBE','gita.yt')
)
);

INSERT INTO prospective_customers
VALUES
(
80004,
'NEPAL DATA',
'RAM POUDEL',
social_media_varray_type(
social_media_type('FACEBOOK','ram.fb'),
social_media_type('INSTAGRAM','ram.ig'),
social_media_type('TWITTER','ram.x')
)
);

COMMIT;
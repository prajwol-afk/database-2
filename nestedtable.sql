INSERT INTO adverts
VALUES
(
90000,
'ORACLE TRAINING',
'DBMS COURSE',
social_media_table_type(
social_media_type('FACEBOOK','oracle.fb'),
social_media_type('INSTAGRAM','oracle.ig'),
social_media_type('LINKEDIN','oracle.li')
)
);

INSERT INTO adverts
VALUES
(
90001,
'JAVA TRAINING',
'JAVA COURSE',
social_media_table_type(
social_media_type('FACEBOOK','java.fb'),
social_media_type('INSTAGRAM','java.ig'),
social_media_type('YOUTUBE','java.yt')
)
);

INSERT INTO adverts
VALUES
(
90002,
'PYTHON TRAINING',
'PYTHON COURSE',
social_media_table_type(
social_media_type('FACEBOOK','python.fb'),
social_media_type('INSTAGRAM','python.ig'),
social_media_type('LINKEDIN','python.li')
)
);

INSERT INTO adverts
VALUES
(
90003,
'WEB DESIGN',
'HTML CSS JS',
social_media_table_type(
social_media_type('FACEBOOK','web.fb'),
social_media_type('INSTAGRAM','web.ig'),
social_media_type('YOUTUBE','web.yt')
)
);

INSERT INTO adverts
VALUES
(
90004,
'DATA SCIENCE',
'MACHINE LEARNING',
social_media_table_type(
social_media_type('FACEBOOK','ml.fb'),
social_media_type('INSTAGRAM','ml.ig'),
social_media_type('LINKEDIN','ml.li')
)
);

COMMIT;

SELECT * FROM adverts;
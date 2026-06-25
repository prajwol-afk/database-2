-- Primary Key Test
INSERT INTO students(student_id,student_firstname,student_surname)
VALUES(9001,'RAM','THAPA');

-- Foreign Key Test
INSERT INTO courses
VALUES(9999,'PYTHON',5,3000,999,NULL);

-- Check Constraint Test
INSERT INTO students
(student_id,student_firstname,student_surname)
VALUES(9100,'Ram','Thapa');

-- Duration Check
INSERT INTO courses
VALUES(8888,'AI',7,4000,20,NULL);

-- Valid Insert
INSERT INTO courses
VALUES(7777,'SQL',5,2000,20,NULL);
SELECT student_firstname
FROM students
WHERE company_id=
(
SELECT company_id
FROM companies
WHERE company_name='KODAK'
);

SELECT title
FROM courses
WHERE cost=
(
SELECT MAX(cost)
FROM courses
);

SELECT instructor_name
FROM instructors
WHERE salary>
(
SELECT AVG(salary)
FROM instructors
);

SELECT student_firstname
FROM students
WHERE student_id IN
(
SELECT student_id
FROM attendance
);

SELECT title
FROM courses
WHERE subject_id=
(
SELECT subject_id
FROM subject_areas
WHERE subject_name='DBMS'
);
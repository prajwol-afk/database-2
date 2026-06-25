SELECT gender,COUNT(*)
FROM students
GROUP BY gender;

SELECT subject_id,COUNT(*)
FROM courses
GROUP BY subject_id;

SELECT instructor_id,COUNT(*)
FROM offerings
GROUP BY instructor_id;

SELECT company_id,COUNT(*)
FROM students
GROUP BY company_id;

SELECT evaluation,COUNT(*)
FROM attendance
GROUP BY evaluation;
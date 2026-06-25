-- Example 1
SELECT s.student_firstname,c.title
FROM students s
JOIN attendance a ON s.student_id=a.student_id
JOIN offerings o ON a.offering_id=o.offering_id
JOIN courses c ON o.course_id=c.course_id;

-- Example 2
SELECT c.title,i.instructor_name
FROM courses c
JOIN offerings o ON c.course_id=o.course_id
JOIN instructors i ON o.instructor_id=i.instructor_id;

-- Example 3
SELECT s.student_firstname,a.amount_paid
FROM students s
JOIN attendance a
ON s.student_id=a.student_id;

-- Example 4
SELECT c.title,sa.subject_name
FROM courses c
JOIN subject_areas sa
ON c.subject_id=sa.subject_id;

-- Example 5
SELECT i.instructor_name,o.start_date
FROM instructors i
JOIN offerings o
ON i.instructor_id=o.instructor_id;
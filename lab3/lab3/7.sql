SELECT s.*
FROM Students s
JOIN Enrollments e s.student_id=e.student_id
WHERE e.course_id='CS101';

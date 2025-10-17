SELECT s.*
FROM Students s
JOIN Enrollments e ON s.student_id=e.students_id
WHERE e.course_id IN  ('MATH201','PHYS301');
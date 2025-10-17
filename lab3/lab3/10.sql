SELECT e.course_id, COUNT(e.student_id) AS student_count
FROM Enrollments e
GROUP BY e.course_id;
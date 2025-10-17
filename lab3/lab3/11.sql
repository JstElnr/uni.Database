SELECT e.course_id
FROM Enrollments e
GROUP BY e.course_id
HAVING COUNT(e.student_id)>2;
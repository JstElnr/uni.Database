SELECT s.first_name, s.last_name
FROM Students s
JOIN Enrollments e ON s.student_id=e.student_id
WHERE e.course_id=(
    SELECT course_id
    FROM Courses
    ORDER BY credits ASC
    LIMIT 1 
);

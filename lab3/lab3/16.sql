UPDATE Courses
SET credits=credits-1
WHERE course_id=(
    SELECT course_id
    FROM Courses
    ORDER BY credits ASC
    LIMIT 1
);
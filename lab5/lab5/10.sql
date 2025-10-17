SELECT m.member_name, COUNT(b.borrowing_id) AS total_books
FROM members m
LEFT jOIN borrowings b ON m.member_id=b.member_id
GROUP BY m.member_name;

SELECT b.*
FROM borrowings b
JOIN librarians l ON b.librarian_id=l.librarian_id
WHERE l.city='Paris'
AND b.borrow_date BETWEEN '2021-01-01' AND '2023-12-31';

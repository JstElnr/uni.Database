SELECT COUNT(*) AS total_borrowings
FROM borrowings
EXTRACT(YEAR FROM borrow_date)
BETWEEN 2020 AND 2024;

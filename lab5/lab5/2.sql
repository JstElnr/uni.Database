CREATE TABLE members(
    member_id SERIAL PRIMARY KEY,
    member_name VARCHAR(100),
    city VARCHAR(100),
    membership_level INT,
    librarian_id INT
);

CREATE TABLE borrowings(
    borrowing_id INT PRIMARY KEY,
    borrow_date DATE,
    return_date DATE,
    member_id INT REFERENCES members(member_id),
    librarian_id INT,
    book_id INT
);

CREATE TABLE librarians(
    librarian_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    commission NUMERIC(4,2)
);

INSERT INTO members VALUES
(1001, 'John Doe', 'New York', 1, 2001),
(1002, 'Alice Johnson', 'California', 2, 2002),
(1003, 'Bob Smith', 'London', 1, 2003),
(1004, 'Sara Green', 'Paris', 3, 2004),
(1005, 'David Brown', 'New York', 2, 2001),
(1006, 'Emma White', 'Berlin', 2, 2005),
(1007, 'Olivia Black', 'Rome', 3, 2006);

INSERT INTO borrowings VALUES
(30001, '2023-01-05', '2023-01-10', 1002, 2002),
(30002, '2022-07-15', '2022-07-17', 1003, 2003),
(30003, '2021-05-12', '2021-05-15', 1001, 2001),
(30004, '2024-03-10', '2024-03-12', 1004, 2004),
(30005, '2022-02-20', '2022-02-24', 1007, 2006),
(30006, '2023-06-02', '2023-06-12', 1005, 2001);

INSERT INTO librarians VALUES
(2001, 'Michael Green', 'New York', 0.15),
(2002, 'Anna Blue', 'California', 0.13),
(2003, 'Chris Red', 'London', 0.12),
(2004, 'Emma Yellow', 'Paris', 0.14),
(2005, 'David Purple', 'Berlin', 0.12),
(2006, 'Laura Orange', 'Rome', 0.10);
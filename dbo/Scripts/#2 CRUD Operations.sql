
-- Task 1 Create a New Book Record
INSERT INTO books(isbn, book_title, category, rental_price, [status], author, publisher)
VALUES ('978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.');
SELECT * FROM books;


-- Task 2 Update an Existing Member's Address
UPDATE members
SET member_address = '125 Oak St'
WHERE member_id = 'C103'
SELECT * FROM members;


-- Task 3 Delete a Record from the Issued Status Table
DELETE FROM issued_status
WHERE issued_id = 'IS121'
SELECT * FROM issued_status;


-- Task 4 Retrieve All Books Issued by a Specific Employee
SELECT * FROM issued_status
WHERE issued_emp_id = 'E101'
SELECT * FROM issued_status;


-- Task 5 List Member Who Have Issued More Than One Book
SELECT 
    issued_emp_id, 
    COUNT(*) AS total_books_issued
FROM issued_status
GROUP BY issued_emp_id 
HAVING COUNT(*) > 1;

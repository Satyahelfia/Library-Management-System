
-- Retrieve All Books in a Specific Category
SELECT * FROM books
WHERE category = 'Classic'


-- Find Total Rental Income by Category
SELECT
    b.category,
    SUM(b.rental_price) AS total_rental_income,
    COUNT(*) AS total_books_rented
FROM
    issued_status AS ist 
JOIN
    books AS b 
ON 
    b.isbn = ist.issued_book_isbn
GROUP BY
    b.category;


-- List Members Who Registered in the Last 180 Days
SELECT * FROM members
WHERE reg_date >= DATEADD(DAY, -180 ,GETDATE()) 


-- List Employees with Their Branch Manager's Name and their branch details
SELECT 
    e1.emp_id,
    e1.emp_name,
    e1.position,
    e1.salary,
    b.*,
    e2.emp_name as manager
FROM employees as e1
JOIN 
branch as b
ON e1.branch_id = b.branch_id    
JOIN
employees as e2
ON e2.emp_id = b.manager_id


-- Create a Table of Books with Rental Price Above a Certain Threshold
SELECT * 
INTO expensive_books 
FROM books
WHERE rental_price > 7.00;


-- Retrieve the List of Books Not Yet Returned
SELECT * FROM issued_status as ist
LEFT JOIN
return_status as rs
ON rs.issued_id = ist.issued_id
WHERE rs.return_id IS NULL;
-- Create Summary Tables
-- Used CTAS to generate new tables based on query results - each book and total book_issued_cnt

SELECT 
    b.isbn, 
    b.book_title, 
    COUNT(ist.issued_id) AS book_issued_count
INTO book_issued_cnt
FROM books AS b
JOIN issued_status AS ist
    ON ist.issued_book_isbn = b.isbn
GROUP BY b.isbn, b.book_title;

SELECT * FROM book_issued_cnt;
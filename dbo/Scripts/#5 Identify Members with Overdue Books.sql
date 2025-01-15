CREATE OR ALTER PROCEDURE add_return_records
    @p_return_id NVARCHAR(10), 
    @p_issued_id NVARCHAR(10), 
    @p_book_quality NVARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    -- Validate if the issued_id exists in the issued_status table
    IF NOT EXISTS (
        SELECT 1 
        FROM issued_status 
        WHERE issued_id = @p_issued_id
    )
    BEGIN
        PRINT 'Issued ID not found in issued_status table';
        RETURN;
    END;

    -- Insert a record into return_status
    INSERT INTO return_status (return_id, issued_id, return_date, book_quality)
    VALUES (@p_return_id, @p_issued_id, GETDATE(), @p_book_quality);

    -- Declare variables to store the ISBN and book name
    DECLARE @v_isbn NVARCHAR(50);
    DECLARE @v_book_name NVARCHAR(80);

    -- Retrieve the ISBN and book name from issued_status
    SELECT 
        @v_isbn = issued_book_isbn,
        @v_book_name = issued_book_name
    FROM issued_status
    WHERE issued_id = @p_issued_id;

    -- Update the book status in the books table
    UPDATE books
    SET status = 'yes'
    WHERE isbn = @v_isbn;

    -- Notify the user of the returned book
    PRINT 'Thank you for returning the book: ' + @v_book_name;
END;
GO

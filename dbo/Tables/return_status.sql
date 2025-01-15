CREATE TABLE [dbo].[return_status] (
    [return_id]        CHAR (5)      NOT NULL,
    [issued_id]        CHAR (5)      NULL,
    [return_book_name] NVARCHAR (50) NULL,
    [return_date]      DATE          NULL,
    [return_book_isbn] NVARCHAR (50) NULL,
    CONSTRAINT [PK_return_status] PRIMARY KEY CLUSTERED ([return_id] ASC)
);


GO


CREATE TABLE [dbo].[issued_status] (
    [issued_id]        CHAR (5)      NOT NULL,
    [issued_member_id] CHAR (4)      NULL,
    [issued_book_name] VARCHAR (MAX) NULL,
    [issued_date]      DATE          NULL,
    [issued_book_isbn] VARCHAR (50)  NULL,
    [issued_emp_id]    VARCHAR (50)  NULL,
    CONSTRAINT [PK_issued_status] PRIMARY KEY CLUSTERED ([issued_id] ASC)
);


GO


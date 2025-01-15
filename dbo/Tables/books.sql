CREATE TABLE [dbo].[books] (
    [isbn]         NVARCHAR (50)  NOT NULL,
    [book_title]   NVARCHAR (100) NULL,
    [category]     NVARCHAR (50)  NULL,
    [rental_price] FLOAT (53)     NULL,
    [status]       VARCHAR (50)   NULL,
    [author]       NVARCHAR (50)  NULL,
    [publisher]    NVARCHAR (50)  NULL,
    CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED ([isbn] ASC)
);

GO


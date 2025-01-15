CREATE TABLE [dbo].[employees] (
    [emp_id]    CHAR (4)     NOT NULL,
    [emp_name]  VARCHAR (50) NULL,
    [position]  VARCHAR (50) NULL,
    [salary]    MONEY        NULL,
    [branch_id] CHAR (4)     NULL,
    CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED ([emp_id] ASC)
);


GO


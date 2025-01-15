CREATE TABLE [dbo].[branch] (
    [branch_id]      CHAR (4)      NOT NULL,
    [manager_id]     CHAR (4)      NULL,
    [branch_address] NVARCHAR (50) NULL,
    [contact_no]     BIGINT        NULL,
    CONSTRAINT [PK_branch] PRIMARY KEY CLUSTERED ([branch_id] ASC)
);


GO


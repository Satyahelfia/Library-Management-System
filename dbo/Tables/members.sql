CREATE TABLE [dbo].[members] (
    [member_id]      CHAR (4)      NOT NULL,
    [member_name]    NVARCHAR (50) NULL,
    [member_address] NVARCHAR (50) NULL,
    [reg_date]       DATE          NULL,
    CONSTRAINT [PK_members] PRIMARY KEY CLUSTERED ([member_id] ASC)
);


GO


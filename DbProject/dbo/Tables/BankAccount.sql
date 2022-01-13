CREATE TABLE [dbo].[BankAccount] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [RefId]       BIGINT           NOT NULL,
    [AccountNo]   NVARCHAR (100)   NOT NULL,
    [AccountName] NVARCHAR (200)   NOT NULL,
    [BranchName]  NVARCHAR (200)   NULL,
    [BankName]    NVARCHAR (200)   NULL,
    [RoutingNo]   NVARCHAR (50)    NULL,
    [SwiftCode]   NVARCHAR (50)    NULL,
    [Remarks]     NVARCHAR (100)   NULL,
    [IsActive]    BIT              NOT NULL,
    [IsDefault]   BIT              NOT NULL,
    [EXPNo]       NVARCHAR (20)    NULL,
    CONSTRAINT [PK_BankAccount] PRIMARY KEY CLUSTERED ([Id] ASC)
);


CREATE TABLE [dbo].[CreditTerm] (
    [Id]      UNIQUEIDENTIFIER NOT NULL,
    [RefId]   BIGINT           NOT NULL,
    [Code]    NVARCHAR (50)    NOT NULL,
    [Name]    NVARCHAR (150)   NOT NULL,
    [Days]    INT              NOT NULL,
    [Remarks] NVARCHAR (200)   NULL,
    [IsFixed] BIT              NOT NULL,
    CONSTRAINT [PK_CreditTerm] PRIMARY KEY CLUSTERED ([Id] ASC)
);


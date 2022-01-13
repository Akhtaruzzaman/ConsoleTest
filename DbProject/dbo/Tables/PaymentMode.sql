CREATE TABLE [dbo].[PaymentMode] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [RefId]          BIGINT           NOT NULL,
    [Code]           NVARCHAR (50)    NOT NULL,
    [Name]           NVARCHAR (100)   NOT NULL,
    [Days]           INT              NOT NULL,
    [Remarks]        NVARCHAR (100)   NULL,
    [Description]    NVARCHAR (100)   NULL,
    [Clause1]        NVARCHAR (200)   NULL,
    [Clause2]        NVARCHAR (200)   NULL,
    [Serial]         INT              NOT NULL,
    [AccGroupHeadId] BIGINT           NULL,
    CONSTRAINT [PK_PaymentMode] PRIMARY KEY CLUSTERED ([Id] ASC)
);


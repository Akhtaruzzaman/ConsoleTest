CREATE TABLE [dbo].[PaymentTerm] (
    [Id]      UNIQUEIDENTIFIER NOT NULL,
    [RefId]   BIGINT           NOT NULL,
    [Code]    NVARCHAR (255)   NOT NULL,
    [Name]    NVARCHAR (255)   NOT NULL,
    [IsFixed] BIT              NOT NULL,
    CONSTRAINT [PK_PaymentTerm] PRIMARY KEY CLUSTERED ([Id] ASC)
);


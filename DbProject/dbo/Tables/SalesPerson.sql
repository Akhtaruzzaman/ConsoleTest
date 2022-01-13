CREATE TABLE [dbo].[SalesPerson] (
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [RefId]               BIGINT           NOT NULL,
    [Name]                NVARCHAR (MAX)   NULL,
    [AddressLine1]        NVARCHAR (250)   NULL,
    [AddressLine2]        NVARCHAR (50)    NULL,
    [AddressLine3]        NVARCHAR (50)    NULL,
    [City]                NVARCHAR (50)    NULL,
    [Country]             NVARCHAR (50)    NULL,
    [Telephone]           NVARCHAR (50)    NULL,
    [Fax]                 NVARCHAR (50)    NULL,
    [Email]               NVARCHAR (100)   NULL,
    [ContactPersonMobile] NVARCHAR (50)    NULL,
    [ContactPerson]       NVARCHAR (100)   NULL,
    [BranchId]            BIGINT           NOT NULL,
    CONSTRAINT [PK_SalesPerson] PRIMARY KEY CLUSTERED ([Id] ASC)
);


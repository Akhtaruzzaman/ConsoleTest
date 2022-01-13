CREATE TABLE [dbo].[FalconUser] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [Name]         NVARCHAR (MAX)   NULL,
    [Address]      NVARCHAR (MAX)   NULL,
    [Password]     NVARCHAR (MAX)   NOT NULL,
    [LoginId]      NVARCHAR (50)    NOT NULL,
    [Email]        NVARCHAR (50)    NULL,
    [Role]         NVARCHAR (15)    NULL,
    [CreatedBy]    NVARCHAR (MAX)   NULL,
    [CreatedAt]    DATETIME2 (7)    NOT NULL,
    [CreatedFrom]  NVARCHAR (MAX)   NULL,
    [UpdatedBy]    NVARCHAR (MAX)   NULL,
    [UpdatedAt]    DATETIME2 (7)    NULL,
    [UpdatedFrom]  NVARCHAR (MAX)   NULL,
    [SiteId]       UNIQUEIDENTIFIER DEFAULT ('fadede5d-1c91-4d95-92e4-f447ea6edade') NOT NULL,
    [IsActive]     BIT              DEFAULT ((0)) NOT NULL,
    [IsLocked]     BIT              DEFAULT ((0)) NOT NULL,
    [IsOTP]        BIT              DEFAULT ((0)) NOT NULL,
    [PasswordDate] DATETIME2 (7)    DEFAULT ('0001-01-01T00:00:00.0000000') NOT NULL,
    [TryTime]      INT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_FalconUser] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_FalconUser_LoginId]
    ON [dbo].[FalconUser]([LoginId] ASC);


CREATE TABLE [dbo].[User_Program] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [UserId]      UNIQUEIDENTIFIER NOT NULL,
    [ProgramId]   UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]   NVARCHAR (MAX)   NULL,
    [CreatedAt]   DATETIME2 (7)    NOT NULL,
    [CreatedFrom] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_User_Program] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_User_Program_FalconUser_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[FalconUser] ([Id]),
    CONSTRAINT [FK_User_Program_ProgramMaster_ProgramId] FOREIGN KEY ([ProgramId]) REFERENCES [dbo].[ProgramMaster] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_User_Program_ProgramId]
    ON [dbo].[User_Program]([ProgramId] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_User_Program_UserId_ProgramId]
    ON [dbo].[User_Program]([UserId] ASC, [ProgramId] ASC);


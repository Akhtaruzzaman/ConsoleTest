CREATE TABLE [dbo].[ORGM_ORDER_H] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [OrderNo]              NVARCHAR (MAX)   NULL,
    [Status]               INT              NOT NULL,
    [LotNo]                NVARCHAR (MAX)   NULL,
    [SiteId]               UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]            NVARCHAR (MAX)   NULL,
    [CreatedAt]            DATETIME2 (7)    NOT NULL,
    [CreatedFrom]          NVARCHAR (MAX)   NULL,
    [UpdatedBy]            NVARCHAR (MAX)   NULL,
    [UpdatedAt]            DATETIME2 (7)    NULL,
    [UpdatedFrom]          NVARCHAR (MAX)   NULL,
    [IsAdditionalOrder]    BIT              DEFAULT ((0)) NOT NULL,
    [DataGroup]            NVARCHAR (MAX)   NULL,
    [ArtworkConfirmedById] UNIQUEIDENTIFIER NULL,
    [ArtworkConfirmedDate] DATETIME2 (7)    NULL,
    [IsCartonSticker]      BIT              DEFAULT ((0)) NOT NULL,
    [OrgmOrderType]        INT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_ORGM_ORDER_H] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ORGM_ORDER_H_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_ORGM_ORDER_H_SiteId]
    ON [dbo].[ORGM_ORDER_H]([SiteId] ASC);


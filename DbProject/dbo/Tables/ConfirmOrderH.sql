CREATE TABLE [dbo].[ConfirmOrderH] (
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [LotNo]                    NVARCHAR (MAX)   NULL,
    [Date]                     DATETIME2 (7)    NOT NULL,
    [SystemId]                 UNIQUEIDENTIFIER NOT NULL,
    [BillingToId]              UNIQUEIDENTIFIER NOT NULL,
    [BillingId]                UNIQUEIDENTIFIER NULL,
    [ShippingToId]             UNIQUEIDENTIFIER NOT NULL,
    [ShipmentMethodId]         UNIQUEIDENTIFIER NOT NULL,
    [ShippingTermsId]          UNIQUEIDENTIFIER NOT NULL,
    [CreditTermId]             UNIQUEIDENTIFIER NOT NULL,
    [SiteId]                   UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]                NVARCHAR (MAX)   NULL,
    [CreatedAt]                DATETIME2 (7)    NOT NULL,
    [CreatedFrom]              NVARCHAR (MAX)   NULL,
    [UpdatedBy]                NVARCHAR (MAX)   NULL,
    [UpdatedAt]                DATETIME2 (7)    NULL,
    [UpdatedFrom]              NVARCHAR (MAX)   NULL,
    [Bill_ContactPerson]       NVARCHAR (100)   NULL,
    [Bill_ContactPersonMobile] NVARCHAR (50)    NULL,
    [Bill_Email]               NVARCHAR (MAX)   NULL,
    [PaymentModeId]            UNIQUEIDENTIFIER DEFAULT (N'fadede5d-1c91-4d95-92e4-f447ea6edade') NOT NULL,
    [PaymentTermId]            UNIQUEIDENTIFIER DEFAULT (N'fadede5d-1c91-4d95-92e4-f447ea6edade') NOT NULL,
    [Ship_ContactPerson]       NVARCHAR (100)   NULL,
    [Ship_ContactPersonMobile] NVARCHAR (50)    NULL,
    [Ship_Email]               NVARCHAR (MAX)   NULL,
    [Regenerate]               INT              DEFAULT ((0)) NOT NULL,
    [RegenerateEmail]          INT              DEFAULT ((0)) NOT NULL,
    [DataGroup]                NVARCHAR (MAX)   NULL,
    [DataMailedStatus]         INT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_ConfirmOrderH] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConfirmOrderH_CreditTerm_CreditTermId] FOREIGN KEY ([CreditTermId]) REFERENCES [dbo].[CreditTerm] ([Id]),
    CONSTRAINT [FK_ConfirmOrderH_PaymentMode_PaymentModeId] FOREIGN KEY ([PaymentModeId]) REFERENCES [dbo].[PaymentMode] ([Id]),
    CONSTRAINT [FK_ConfirmOrderH_PaymentTerm_PaymentTermId] FOREIGN KEY ([PaymentTermId]) REFERENCES [dbo].[PaymentTerm] ([Id]),
    CONSTRAINT [FK_ConfirmOrderH_ShipmentMethod_ShipmentMethodId] FOREIGN KEY ([ShipmentMethodId]) REFERENCES [dbo].[ShipmentMethod] ([Id]),
    CONSTRAINT [FK_ConfirmOrderH_ShippingTerms_ShippingTermsId] FOREIGN KEY ([ShippingTermsId]) REFERENCES [dbo].[ShippingTerms] ([Id]),
    CONSTRAINT [FK_ConfirmOrderH_Site_SiteId] FOREIGN KEY ([SiteId]) REFERENCES [dbo].[Site] ([Id]),
    CONSTRAINT [FK_ConfirmOrderH_VendorMaster_BillingId] FOREIGN KEY ([BillingId]) REFERENCES [dbo].[VendorMaster] ([Id]),
    CONSTRAINT [FK_ConfirmOrderH_VendorMaster_ShippingToId] FOREIGN KEY ([ShippingToId]) REFERENCES [dbo].[VendorMaster] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_ConfirmOrderH_BillingId]
    ON [dbo].[ConfirmOrderH]([BillingId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConfirmOrderH_CreditTermId]
    ON [dbo].[ConfirmOrderH]([CreditTermId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConfirmOrderH_ShipmentMethodId]
    ON [dbo].[ConfirmOrderH]([ShipmentMethodId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConfirmOrderH_ShippingTermsId]
    ON [dbo].[ConfirmOrderH]([ShippingTermsId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConfirmOrderH_ShippingToId]
    ON [dbo].[ConfirmOrderH]([ShippingToId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConfirmOrderH_SiteId]
    ON [dbo].[ConfirmOrderH]([SiteId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConfirmOrderH_PaymentModeId]
    ON [dbo].[ConfirmOrderH]([PaymentModeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConfirmOrderH_PaymentTermId]
    ON [dbo].[ConfirmOrderH]([PaymentTermId] ASC);


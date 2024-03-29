﻿CREATE TABLE [dbo].[ORGM_DATA_HD] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [ORGM_DATA_HId]    UNIQUEIDENTIFIER NOT NULL,
    [TT]               NVARCHAR (MAX)   NULL,
    [P]                NVARCHAR (MAX)   NULL,
    [SpecialHangtag]   NVARCHAR (MAX)   NULL,
    [Sizetoprint]      NVARCHAR (MAX)   NULL,
    [Descrip]          NVARCHAR (MAX)   NULL,
    [Barcode]          NVARCHAR (MAX)   NULL,
    [MBoxBarcode]      NVARCHAR (MAX)   NULL,
    [Color]            NVARCHAR (MAX)   NULL,
    [License]          NVARCHAR (MAX)   NULL,
    [Desc]             NVARCHAR (MAX)   NULL,
    [Naz]              NVARCHAR (MAX)   NULL,
    [Height]           NVARCHAR (MAX)   NULL,
    [Department]       NVARCHAR (MAX)   NULL,
    [Pz]               NVARCHAR (MAX)   NULL,
    [DataGroup]        NVARCHAR (MAX)   NULL,
    [PD]               NVARCHAR (MAX)   NULL,
    [Boxes]            NVARCHAR (MAX)   NULL,
    [QTY]              NVARCHAR (MAX)   NULL,
    [ShortCode]        NVARCHAR (MAX)   NULL,
    [Rangesize]        NVARCHAR (MAX)   NULL,
    [Forn]             NVARCHAR (MAX)   NULL,
    [Articolo]         NVARCHAR (MAX)   NULL,
    [LifcoDescription] NVARCHAR (MAX)   NULL,
    [LifcoPriceSymbol] NVARCHAR (MAX)   NULL,
    [LifcoTheme]       NVARCHAR (MAX)   NULL,
    [LifcoVatCode]     NVARCHAR (MAX)   NULL,
    [LifcoColorCode]   NVARCHAR (MAX)   NULL,
    [IsValidForOrder]  BIT              DEFAULT ((0)) NOT NULL,
    [IsSeasonClosed]   BIT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_ORGM_DATA_HD] PRIMARY KEY CLUSTERED ([Id] ASC)
);


CREATE TABLE [dbo].[skill_type] (
    [ID]              INT          IDENTITY (1, 1) NOT NULL,
    [Name]            VARCHAR (45) NOT NULL,
    [Description]     VARCHAR (45) DEFAULT ('') NOT NULL,
    [Parent]          INT          DEFAULT (NULL) NULL,
    [Group]           SMALLINT     DEFAULT (NULL) NULL,
    [PrimaryStat]     CHAR (4)     NOT NULL,
    [SecondaryStat]   CHAR (4)     NOT NULL,
    [MasterMessageID] INT          DEFAULT ('0') NULL,
    [GMMessageID]     INT          DEFAULT ('0') NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_skill_type_skill_type] FOREIGN KEY ([Parent]) REFERENCES [dbo].[skill_type] ([ID])
);


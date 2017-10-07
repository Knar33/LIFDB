CREATE TABLE [dbo].[recipe] (
    [ID]                 INT           IDENTITY (1, 1) NOT NULL,
    [Name]               VARCHAR (50)  DEFAULT (NULL) NULL,
    [Description]        VARCHAR (255) DEFAULT (NULL) NULL,
    [StartingToolsID]    INT           DEFAULT (NULL) NULL,
    [SkillTypeID]        INT           DEFAULT (NULL) NULL,
    [SkillLvl]           SMALLINT      DEFAULT (NULL) NULL,
    [ResultObjectTypeID] INT           DEFAULT (NULL) NULL,
    [SkillDepends]       SMALLINT      DEFAULT ('0') NOT NULL,
    [Quantity]           SMALLINT      DEFAULT ('0') NOT NULL,
    [Autorepeat]         SMALLINT      DEFAULT ('0') NOT NULL,
    [IsBlueprint]        SMALLINT      DEFAULT ('0') NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_recipe_result_objects_types] FOREIGN KEY ([ResultObjectTypeID]) REFERENCES [dbo].[objects_types] ([ID]),
    CONSTRAINT [FK_recipe_skill_type] FOREIGN KEY ([SkillTypeID]) REFERENCES [dbo].[skill_type] ([ID]),
    CONSTRAINT [FK_recipe_starting_objects_types] FOREIGN KEY ([StartingToolsID]) REFERENCES [dbo].[objects_types] ([ID])
);


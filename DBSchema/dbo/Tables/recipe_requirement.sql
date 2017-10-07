CREATE TABLE [dbo].[recipe_requirement] (
    [ID]                   INT      IDENTITY (1, 1) NOT NULL,
    [RecipeID]             INT      DEFAULT (NULL) NULL,
    [MaterialObjectTypeID] INT      DEFAULT (NULL) NULL,
    [Quality]              SMALLINT DEFAULT (NULL) NULL,
    [Influence]            SMALLINT DEFAULT (NULL) NULL,
    [Quantity]             SMALLINT DEFAULT (NULL) NULL,
    [IsRegionItemRequired] SMALLINT DEFAULT ('0') NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_recipe_requirement_objects_types] FOREIGN KEY ([MaterialObjectTypeID]) REFERENCES [dbo].[objects_types] ([ID]),
    CONSTRAINT [FK_recipe_requirement_recipe] FOREIGN KEY ([RecipeID]) REFERENCES [dbo].[recipe] ([ID])
);


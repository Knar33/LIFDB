CREATE TABLE [dbo].[recipe_possible_blueprints] (
    [ID]           INT IDENTITY (1, 1) NOT NULL,
    [RecipeID]     INT NOT NULL,
    [BaseRecipeID] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_recipe_possible_blueprints_baserecipe] FOREIGN KEY ([BaseRecipeID]) REFERENCES [dbo].[recipe] ([ID]),
    CONSTRAINT [FK_recipe_possible_blueprints_recipe] FOREIGN KEY ([RecipeID]) REFERENCES [dbo].[recipe] ([ID])
);


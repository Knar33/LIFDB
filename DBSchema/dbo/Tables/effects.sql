CREATE TABLE [dbo].[effects] (
    [ID]                  SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Effect_name]         VARCHAR (255) NOT NULL,
    [ResultPreparationID] INT           DEFAULT (NULL) NULL,
    [ResultPotionID]      INT           DEFAULT (NULL) NULL,
    [PlayerEffectID]      SMALLINT      DEFAULT (NULL) NULL,
    PRIMARY KEY NONCLUSTERED ([ID] ASC),
    CONSTRAINT [FK_effects_result_potion_objects_types] FOREIGN KEY ([ResultPotionID]) REFERENCES [dbo].[objects_types] ([ID]),
    CONSTRAINT [FK_effects_result_preparation_objects_types] FOREIGN KEY ([ResultPreparationID]) REFERENCES [dbo].[objects_types] ([ID])
);


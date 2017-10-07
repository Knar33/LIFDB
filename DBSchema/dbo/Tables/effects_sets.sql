CREATE TABLE [dbo].[effects_sets] (
    [ID]        INT      IDENTITY (1, 1) NOT NULL,
    [EffectID1] SMALLINT NOT NULL,
    [EffectID2] SMALLINT DEFAULT (NULL) NULL,
    [EffectID3] SMALLINT NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_effects_sets_effects_1] FOREIGN KEY ([EffectID1]) REFERENCES [dbo].[effects] ([ID]),
    CONSTRAINT [FK_effects_sets_effects_2] FOREIGN KEY ([EffectID2]) REFERENCES [dbo].[effects] ([ID]),
    CONSTRAINT [FK_effects_sets_effects_3] FOREIGN KEY ([EffectID3]) REFERENCES [dbo].[effects] ([ID])
);


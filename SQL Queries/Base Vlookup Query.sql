SELECT [dbo].[titles_disney].*, ISNULL([dbo].[credits_disney].name, NULL) as name, 
               ISNULL([dbo].[credits_disney].character, NULL) as character, 
               ISNULL([dbo].[credits_disney].role, NULL) as role
FROM [dbo].[titles_disney]
LEFT JOIN [dbo].[credits_disney] ON [dbo].[titles_disney].ID = [dbo].[credits_disney].ID;


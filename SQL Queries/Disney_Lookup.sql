

UPDATE [dbo].[titles_disney]
SET char_name = subquery.char_name,
    [character] = subquery.character,
    [role] = subquery.role
FROM (
    SELECT [dbo].[titles_disney].ID, 
           ISNULL([dbo].[credits_disney].name, NULL) as char_name, 
           ISNULL([dbo].[credits_disney].character, NULL) as character, 
           ISNULL([dbo].[credits_disney].role, NULL) as role
    FROM [dbo].[titles_disney]
    LEFT JOIN [dbo].[credits_disney] ON [dbo].[titles_disney].ID = [dbo].[credits_disney].ID
) AS subquery
WHERE [dbo].[titles_disney].ID = subquery.ID;

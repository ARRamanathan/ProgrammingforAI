

UPDATE [dbo].[titles_netflix]
SET char_name = subquery.char_name,
    [character] = subquery.character,
    [role] = subquery.role
FROM (
    SELECT [dbo].[titles_netflix].ID, 
           ISNULL([dbo].[credits_netflix].name, NULL) as char_name, 
           ISNULL([dbo].[credits_netflix].character, NULL) as character, 
           ISNULL([dbo].[credits_netflix].role, NULL) as role
    FROM [dbo].[titles_netflix]
    LEFT JOIN [dbo].[credits_netflix] ON [dbo].[titles_netflix].ID = [dbo].[credits_netflix].ID
) AS subquery
WHERE [dbo].[titles_netflix].ID = subquery.ID;

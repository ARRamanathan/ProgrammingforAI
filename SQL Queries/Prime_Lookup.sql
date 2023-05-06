

UPDATE [dbo].[titles_prime]
SET char_name = subquery.char_name,
    [character] = subquery.character,
    [role] = subquery.role
FROM (
    SELECT [dbo].[titles_prime].ID, 
           ISNULL([dbo].[credits_prime].name, NULL) as char_name, 
           ISNULL([dbo].[credits_prime].character, NULL) as character, 
           ISNULL([dbo].[credits_prime].role, NULL) as role
    FROM [dbo].[titles_prime]
    LEFT JOIN [dbo].[credits_prime] ON [dbo].[titles_prime].ID = [dbo].[credits_prime].ID
) AS subquery
WHERE [dbo].[titles_prime].ID = subquery.ID;

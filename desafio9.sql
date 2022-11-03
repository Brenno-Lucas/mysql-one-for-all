SELECT 
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    historic_of_reproductions
WHERE user_id = 1;
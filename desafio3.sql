SELECT 
    u.user_name AS usuario,
    COUNT(h.user_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(s.song_duration) / 60, 2) AS total_minutos
FROM
    users AS u
        INNER JOIN
    historic_of_reproductions AS h ON h.user_id = u.user_id
        INNER JOIN
    songs AS s ON s.song_id = h.song_id
GROUP BY u.user_name
ORDER BY u.user_name;
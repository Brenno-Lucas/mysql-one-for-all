SELECT 
    s.song_name AS cancao,
    COUNT(h.user_id) AS reproducoes
FROM
    songs AS s
        INNER JOIN
    historic_of_reproductions AS h ON h.song_id = s.song_id
GROUP BY s.song_name
ORDER BY reproducoes DESC, s.song_name
LIMIT 2;

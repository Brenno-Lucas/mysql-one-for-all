SELECT 
    a.artist_name AS artista, al.album_name AS album
FROM
    artists AS a
        INNER JOIN
    albuns AS al ON al.artist_id = a.artist_id
WHERE
    a.artist_name = 'Elis Regina'
ORDER BY al.album_name;
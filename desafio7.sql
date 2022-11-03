SELECT
  a.artist_name as artista, 
  al.album_name as album, 
  COUNT(f.artist_id) as seguidores
  FROM artists a
	INNER JOIN albuns al
    ON a.artist_id = al.artist_id
    INNER JOIN following_artists f
    ON a.artist_id = f.artist_id
    GROUP BY al.album_id
    ORDER BY seguidores DESC, artista, album;
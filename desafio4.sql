SELECT 
    u.user_name AS usuario,
    IF(MAX(YEAR(listen_date)) >= 2021,
      'Usuário ativo',
      'Usuário inativo') AS status_usuario
FROM
    users AS u
        INNER JOIN
    historic_of_reproductions AS h ON h.user_id = u.user_id
GROUP BY u.user_name
ORDER BY u.user_name;
INSERT INTO address (full_address, zipcode, city_id, costumer_id)
SELECT 
    CONCAT(
        COALESCE(FLOOR(RAND() * 1000) + 1, 1),  -- Número de calle aleatorio (1-1000)
        ' ',
        COALESCE(
            ELT(ROUND(RAND() * 49) + 1,
                'Calle Mayor', 'Avenida del Sol', 'Paseo de la Castellana', 'Gran Vía',
                'Calle de la Paz', 'Calle del Carmen', 'Calle Real', 'Calle de la Independencia',
                'Calle de la Libertad', 'Calle de la Constitución', 'Calle del Progreso',
                'Calle de la Igualdad', 'Calle de la Fraternidad', 'Calle de la Justicia',
                'Calle de la Solidaridad', 'Calle de la Esperanza', 'Calle de la Alegría',
                'Calle del Amor', 'Calle de la Amistad', 'Calle de la Paz', 'Calle de la Tranquilidad',
                'Calle del Silencio', 'Calle de la Naturaleza', 'Calle del Sol', 'Calle de la Luna',
                'Calle de las Estrellas', 'Calle del Mar', 'Calle de la Montaña', 'Calle del Río',
                'Calle del Bosque', 'Calle del Campo', 'Calle de la Ciudad', 'Calle del Pueblo',
                'Calle de la Vida', 'Calle de la Muerte', 'Calle del Nacimiento', 'Calle del Crecimiento',
                'Calle del Cambio', 'Calle del Futuro'
            ),
            'Calle Desconocida'  -- Valor por defecto en caso de nulo
        ),
        ' ',
        COALESCE(
            ELT(ROUND(RAND() * 5),
                'piso ', 'ático ', 'planta baja '
            ),
            'planta baja'  -- Valor por defecto en caso de nulo
        ),
        COALESCE(FLOOR(RAND() * 10) + 1, 1),  -- Número de piso aleatorio (1-10)
        ' ',
        'D'  -- Opcional: Designación de puerta
    ),
    LPAD(FLOOR(RAND() * 10000) + 50000, 5, '0'),  -- Código postal aleatorio (formato 5XXXX)
    FLOOR(RAND() * (SELECT MAX(id) FROM city)) + 1,  -- ID de ciudad aleatoria existente
    FLOOR(RAND() * (SELECT MAX(id) FROM costumer)) + 1  -- ID de cliente aleatorio existente
FROM (
    SELECT 1 AS id UNION ALL
    SELECT 2 AS id UNION ALL
    SELECT 3 AS id UNION ALL
    SELECT 4 AS id UNION ALL
    SELECT 5 AS id UNION ALL
    SELECT 6 AS id UNION ALL
    SELECT 7 AS id UNION ALL
    SELECT 8 AS id UNION ALL
    SELECT 9 AS id UNION ALL
    SELECT 10 AS id UNION ALL
    SELECT 11 AS id UNION ALL
    SELECT 12 AS id UNION ALL
    SELECT 13 AS id UNION ALL
    SELECT 14 AS id UNION ALL
    SELECT 15 AS id UNION ALL
    SELECT 16 AS id UNION ALL
    SELECT 17 AS id UNION ALL
    SELECT 18 AS id UNION ALL
    SELECT 19 AS id UNION ALL
    SELECT 20 AS id UNION ALL
    SELECT 21 AS id UNION ALL
    SELECT 22 AS id UNION ALL
    SELECT 23 AS id UNION ALL
    SELECT 24 AS id UNION ALL
    SELECT 25 AS id UNION ALL
    SELECT 26 AS id UNION ALL
    SELECT 27 AS id UNION ALL
    SELECT 28 AS id UNION ALL
    SELECT 29 AS id UNION ALL
    SELECT 30 AS id UNION ALL
    SELECT 31 AS id UNION ALL
    SELECT 32 AS id UNION ALL
    SELECT 33 AS id UNION ALL
    SELECT 34 AS id UNION ALL
    SELECT 35 AS id UNION ALL
    SELECT 36 AS id UNION ALL
    SELECT 37 AS id UNION ALL
    SELECT 38 AS id UNION ALL
    SELECT 39 AS id UNION ALL
    SELECT 40 AS id UNION ALL
    SELECT 41 AS id UNION ALL
    SELECT 42 AS id UNION ALL
    SELECT 43 AS id UNION ALL
    SELECT 44 AS id UNION ALL
    SELECT 45 AS id UNION ALL
    SELECT 46 AS id UNION ALL
    SELECT 47 AS id UNION ALL
    SELECT 48 AS id UNION ALL
    SELECT 49 AS id UNION ALL
    SELECT 50 AS id
) numbers;

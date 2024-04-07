INSERT INTO product (name, description, stock, price)
SELECT 
    CONCAT(
        COALESCE(ELT(ROUND(RAND() * 14) + 1,
            'Remera', 'Pantalones', 'Vestido', 'Chaqueta', 'Falda',
            'Camisa', 'Abrigo', 'Gorra', 'Chaleco', 'Traje',
            'Jeans', 'Blusa', 'Bufanda', 'Campera'), 'Producto sin nombre'),
        ' ',
        COALESCE(ELT(ROUND(RAND() * 14) + 1,
            'de algodón', 'de lana', 'de cuero', 'vaquero', 'de seda',
            'estampado', 'de punto', 'de terciopelo', 'de poliéster', 'de mezclilla',
            'ajustado', 'holgado', 'a rayas', 'a cuadros', 'de encaje'), 'Descripción no disponible')
    ),
    CONCAT(
        'Descripción de ', 
        COALESCE(ELT(ROUND(RAND() * 14) + 1,
            'una cómoda y elegante', 'una versátil y moderna', 'una clásica y atemporal',
            'una sofisticada y original', 'una informal y casual', 'una chic y juvenil',
            'una refinada y urbana', 'una trendy y fashion', 'una exclusiva y glamurosa', 'una minimalista y trendy',
            'una vintage y retro', 'una llamativa y extravagante', 'una deportiva y dinámica', 'una elegante y sofisticada', 'una casual y desenfadada')
        )
    ),
   COALESCE(FLOOR(RAND() * 100), 0), -- Stock aleatorio entre 0 y 99
   CONCAT(COALESCE(FLOOR(RAND() * 100), 0), '.', LPAD(COALESCE(FLOOR(RAND() * 100), 0), 2, '0')) -- Precio aleatorio en el formato xx.xx
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
) numbers
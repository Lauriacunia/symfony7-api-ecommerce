INSERT INTO city (name)
SELECT ELT(ROUND(RAND() * 49) + 1,
  'Tokio', 'Delhi', 'Shanghai', 'São Paulo', 'Ciudad de México',
  'Cairo', 'Mumbai', 'Beijing', 'Dhaka', 'Osaka',
  'Nueva York', 'Karachi', 'Buenos Aires', 'Chongqing', 'Lagos',
  'Estambul', 'Kinshasa', 'Manila', 'Tianjin', 'Guangzhou',
  'Lahore', 'Bangalore', 'Bangkok', 'Moscú', 'Seúl',
  'Lima', 'París', 'Bogotá', 'Londres', 'Teherán',
  'Nairobi', 'Chicago', 'Shenzhen', 'Ho Chi Minh City', 'Wuhan',
  'Hong Kong', 'Río de Janeiro', 'Bogor', 'Baghdad', 'Santiago',
  'Luanda', 'Riyadh', 'Madrid', 'Pyongyang', 'Dar es Salaam',
  'Khartoum', 'Johannesburgo', 'Yangon', 'Belo Horizonte', 'Surabaya')
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

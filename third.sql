WITH city_counts AS (
    SELECT a.city, COUNT(*) AS total_companies
    FROM Company c
    JOIN Address a ON c.address_id = a.address_id
    GROUP BY a.city
),
top_cities AS (
    SELECT city
    FROM city_counts
    ORDER BY total_companies DESC
    LIMIT 3
),
ranked AS (
    SELECT c.name, c.open_date, a.city,
           RANK() OVER (PARTITION BY a.city ORDER BY c.open_date) AS rank_in_city
    FROM Company c
    JOIN Address a ON c.address_id = a.address_id
    WHERE a.city IN (SELECT city FROM top_cities)
)
SELECT *
FROM ranked
WHERE rank_in_city <= 5
ORDER BY city DESC, rank_in_city;

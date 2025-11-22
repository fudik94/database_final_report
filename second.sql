-- SQLite
SELECT SUBSTR(c.open_date, 7, 4) AS year, COUNT(*) AS total_companies
FROM Company c
GROUP BY year
ORDER BY total_companies DESC;

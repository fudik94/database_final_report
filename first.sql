-- SQLite
SELECT c.name, c.code, c.type, c.open_date, a.street_address, a.city
FROM Company c
JOIN Address a ON c.address_id = a.address_id
ORDER BY c.open_date
LIMIT 50;

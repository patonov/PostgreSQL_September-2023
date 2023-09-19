INSERT INTO heroes(names) VALUES 
('Utko Putkov'); 

SELECT CONCAT(SUBSTRING('Utko Putkov', 6, 4), SUBSTRING('tralala', 7, 1));

SELECT * FROM heroes;

SELECT SUBSTRING('TRALALA9998888', '[A-Z]+') AS "RegExed Substring";

SELECT SUBSTRING('TRALALA9998888', '[0-9]+') AS "Stupid but still relevant";


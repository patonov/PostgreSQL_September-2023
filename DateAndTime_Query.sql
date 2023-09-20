SELECT "id",
	title,
	round("cost", 3)
FROM books
ORDER BY "id";

SELECT EXTRACT('year' from CAST('2022-01-30' as date));
SELECT EXTRACT('year' from '2022-01-30'::date);
SELECT EXTRACT('month' from '2022-01-30'::date);
SELECT EXTRACT('week' from '2022-01-30'::date);
SELECT EXTRACT('day' from '2022-01-30'::date);
SELECT EXTRACT('hour' from '11:22:33'::time);
SELECT EXTRACT('minute' from '11:22:33'::time);
SELECT EXTRACT('second' from '11:22:33'::time);

SELECT date_part('year', now());

SELECT age('2011-01-01', NOW());

SELECT NOW() + INTERVAL '2 years 3 hours 42 minutes 10 seconds';

SELECT TO_CHAR(NOW(), 'month');
SELECT TO_CHAR(NOW(), 'Month');
SELECT TO_CHAR(NOW(), 'MONTH');
SELECT TO_CHAR(NOW(), 'MM');
SELECT TO_CHAR(NOW(), 'mm');
SELECT TO_CHAR(NOW(), 'DAY');
SELECT TO_CHAR(NOW(), 'Day');
SELECT TO_CHAR(NOW(), 'DDD');
SELECT TO_CHAR(NOW(), 'DD');
SELECT TO_CHAR(NOW(), 'WW');

SELECT last_name AS "Last Name",
	TO_CHAR(born, 'DD (Dy) Mon YYYY') AS "Year"
FROM authors;

SELECT last_name AS "Last Name",
	TO_CHAR(born, 'DD|MM|YYYY') AS "Year"
FROM authors;

SELECT last_name AS "Last Name",
	TO_CHAR(born, 'DD:)MM:)YYYY') AS "Year"
FROM authors;

SELECT last_name AS "Last Name",
	TO_CHAR(born, 'DD MM YYYY') AS "Year"
FROM authors;


